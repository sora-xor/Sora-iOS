/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import CommonWallet
import RobinHood

extension WalletNetworkFacade {
    func transferToSoranetOperation(_ transferInfo: TransferInfo) -> CompoundOperationWrapper<Data> {
        let soranetAmount = transferInfo.context?[WalletOperationContextKey.SoranetTransfer.balance]
        let erc20Amount = transferInfo.context?[WalletOperationContextKey.ERC20Withdraw.balance]

        if erc20Amount != nil {
            return combinedTransferToSoranetOperation(transferInfo)
        } else if soranetAmount != nil {
            return createSoranetTransferOperation(from: transferInfo)
        }

        let operation = BaseOperation<Data>()
        operation.result = .failure(WalletNetworkFacadeError.missingTransferData)
        return CompoundOperationWrapper(targetOperation: operation)
    }

    func transferToEthereumOperation(_ transferInfo: TransferInfo) -> CompoundOperationWrapper<Data> {
        let soranetAmount = transferInfo.context?[WalletOperationContextKey.SoranetWithdraw.balance]
        let erc20Amount = transferInfo.context?[WalletOperationContextKey.ERC20Transfer.balance]

        if soranetAmount != nil {
            if let historyContext = transferInfo.context {
                if let ethTx = historyContext.ethereumTxId {
                    return retryWithdrawWithConfirmationOperation(transferInfo, txId: ethTx)
                }
                if let soraTx = historyContext.soranetTxId {
                    return retryWithdrawWithIntentOperation(transferInfo, txId: soraTx)
                }
            }
            return combinedTransferToEthereumOperation(transferInfo)
        } else if erc20Amount != nil {
            return simpleTransferInEthereumOperation(transferInfo)
        }

        let operation = BaseOperation<Data>()
        operation.result = .failure(WalletNetworkFacadeError.missingTransferData)
        return CompoundOperationWrapper(targetOperation: operation)
    }

    // MARK: Private

    private func retryWithdrawWithIntentOperation(_ transferInfo: TransferInfo, txId: String) -> CompoundOperationWrapper<Data> {

        let saveClosure: () -> [WithdrawOperationData] = {
            do {
                let selected = try WithdrawOperationData.createForEthereumFromInfo(transferInfo, transactionId: txId)
                let changed = selected.changingStatus(.intentCompleted)
                return [changed]
            } catch {
                return []
            }
        }

        let saveOperation = withdrawRepository.saveOperation(saveClosure, { [] })

        let combiningOperation = ClosureOperation<Data> {
            do {
                try saveOperation.extractResultData()
            } catch {
                throw error
            }
            return Data(hex: txId)
        }
        combiningOperation.addDependency(saveOperation)

        return CompoundOperationWrapper(targetOperation: combiningOperation, dependencies: [saveOperation])
    }

    private func retryWithdrawWithConfirmationOperation(_ transferInfo: TransferInfo, txId: String) -> CompoundOperationWrapper<Data> {
        let withdraws = withdrawRepository.fetchAllOperation(with: RepositoryFetchOptions.none)
        let saveClosure: () -> [WithdrawOperationData] = {
            do {
                let transactions = try withdraws.extractResultData(throwing: BaseOperationError.parentOperationCancelled)
                if let selected = transactions.first(where: { $0.confirmationTransactionId == txId || $0.transferTransactionId == txId }) {
                    let changed = selected.changingStatus(.intentCompleted).updatingTimestamp()
                    return [changed]
                }
                return []
            } catch {
                return []
            }
        }

        let saveOperation = withdrawRepository.saveOperation(saveClosure, { [] })
        saveOperation.addDependency(withdraws)

        let combiningOperation = ClosureOperation<Data> {
            do {
                try saveOperation.extractResultData()
            } catch {
                throw error
            }
            return Data(hex: txId)
        }

        combiningOperation.addDependency(saveOperation)

        return CompoundOperationWrapper(targetOperation: combiningOperation, dependencies: [withdraws, saveOperation])
    }

    private func combinedTransferToSoranetOperation(_ transferInfo: TransferInfo)
        -> CompoundOperationWrapper<Data> {
        let erc20Withdraw = createERC20WithdrawOperation(from: transferInfo)

        let receiveFetch = soranetOperationFactory.searchOperation(transferInfo.destination)

        let saveClosure: () throws -> [DepositOperationData] = {
            let transactionId = try erc20Withdraw.targetOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)
                .soraHex

            let receiver = try receiveFetch.targetOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)?
                .first

            let data = try DepositOperationData
                .createForEthereumFromInfo(transferInfo,
                                           transactionId: transactionId,
                                           receiverName: receiver?.displayName)

            return [data]
        }

        let localSaveOperation = depositRepository.saveOperation(saveClosure, { [] })

        receiveFetch.allOperations.forEach { localSaveOperation.addDependency($0) }

        let combiningOperation = ClosureOperation<Data> {
            try localSaveOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)

            return try erc20Withdraw.targetOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)
        }

        erc20Withdraw.allOperations.forEach { localSaveOperation.addDependency($0) }
        combiningOperation.addDependency(localSaveOperation)

        let dependencies = erc20Withdraw.allOperations + receiveFetch.allOperations + [localSaveOperation]

        return CompoundOperationWrapper(targetOperation: combiningOperation,
                                        dependencies: dependencies)
    }

    private func combinedTransferToEthereumOperation(_ transferInfo: TransferInfo)
        -> CompoundOperationWrapper<Data> {

        let withdrawDestination: String

        let erc20Amount = transferInfo.context?[WalletOperationContextKey.ERC20Transfer.balance]

        if erc20Amount != nil {
            withdrawDestination = ethereumAddress.soraHexWithPrefix
        } else {
            withdrawDestination = transferInfo.destination
        }

        let withdrawInfo = TransferInfo(source: transferInfo.source,
                                        destination: withdrawDestination,
                                        amount: transferInfo.amount,
                                        asset: transferInfo.asset,
                                        details: transferInfo.details,
                                        fees: transferInfo.fees,
                                        context: transferInfo.context)

        let soranetWithdraw = createSoranetWithdrawOperation(from: withdrawInfo)

        let saveClosure: () throws -> [WithdrawOperationData] = {
            let transactionId = try soranetWithdraw.targetOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)
                .soraHex

            let data = try WithdrawOperationData
                .createForEthereumFromInfo(transferInfo, transactionId: transactionId)

            return [data]
        }

        let localSaveOperation = withdrawRepository.saveOperation(saveClosure, { [] })

        let combiningOperation = ClosureOperation<Data> {
            try localSaveOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)

            return try soranetWithdraw.targetOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)
        }

        soranetWithdraw.allOperations.forEach { localSaveOperation.addDependency($0) }
        combiningOperation.addDependency(localSaveOperation)

        let dependencies = soranetWithdraw.allOperations + [localSaveOperation]

        return CompoundOperationWrapper(targetOperation: combiningOperation,
                                        dependencies: dependencies)
    }

    private func simpleTransferInEthereumOperation(_ transferInfo: TransferInfo)
        -> CompoundOperationWrapper<Data> {
        let ethereumTransfer = createERC20TransferOperation(from: transferInfo)

        let saveClosure: () throws -> [TransferOperationData] = {
            let transactionId = try ethereumTransfer.targetOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)
                .soraHex

            let data = try TransferOperationData
                .createForEthereumFromInfo(transferInfo, transactionId: transactionId)

            return [data]
        }

        let localSaveOperation = transferRepository.saveOperation(saveClosure, { [] })

        let combiningOperation = ClosureOperation<Data> {
            try localSaveOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)

            return try ethereumTransfer.targetOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)
        }

        ethereumTransfer.allOperations.forEach { localSaveOperation.addDependency($0) }
        combiningOperation.addDependency(localSaveOperation)

        let dependencies = ethereumTransfer.allOperations + [localSaveOperation]

        return CompoundOperationWrapper(targetOperation: combiningOperation,
                                        dependencies: dependencies)
    }
}
