/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import RobinHood

final class EthereumWithdrawTransferPoll: EthereumBasePoll<WithdrawOperationData, CDWithdraw> {
    override func updateTransactionIdsWithChanges(_ changes: [DataProviderChange<WithdrawOperationData>]) {
        for change in changes {
            switch change {
            case .insert(let newItem), .update(let newItem):
                if
                    newItem.status == .transferPending,
                    let transactionId = newItem.transferTransactionId {
                    transactionIds[newItem.identifier] = transactionId
                } else {
                    transactionIds.removeValue(forKey: newItem.identifier)
                }
            default:
                break
            }
        }
    }

    override func createPollForIdentifier(_ identifier: String) -> CompoundOperationWrapper<Void> {
        guard
            let transactionId = transactionIds[identifier],
            let transactionHash = Data(hexString: transactionId) else {

            let operation = BaseOperation<Void>()
            operation.result = .failure(BaseOperationError.unexpectedDependentResult)
            return CompoundOperationWrapper(targetOperation: operation)
        }

        let remoteTransactionOperation = operationFactory
            .createTransactionByHashFetchOperation(transactionHash)
        let localTransactionOperation = repository.fetchOperation(by: identifier,
                                                                  options: RepositoryFetchOptions())
        localTransactionOperation.addDependency(remoteTransactionOperation)

        let saveClosure: () throws -> [WithdrawOperationData] = {
            self.logger.debug("poll \(identifier)")
            guard
                let localTransaction = try localTransactionOperation
                    .extractResultData(throwing: BaseOperationError.parentOperationCancelled),
                localTransaction.status == .transferPending else {
                return []
            }

            let optionalRemoteTransaction = try remoteTransactionOperation
                .extractResultData(throwing: BaseOperationError.parentOperationCancelled)

            if let remoteTransaction = optionalRemoteTransaction {
                if remoteTransaction.blockHash != nil {
                     self.logger.debug("transferCompleted ethWitdraw poll \(identifier)")
                    let changed = localTransaction.changingStatus(.transferCompleted)
                    return [changed]
                } else {
                    guard Date().timeIntervalSince1970 - TimeInterval(localTransaction.timestamp) <= self.pendingFailureDelay  else {
                        let changed = localTransaction.changingStatus(.transferFailed)
                        self.logger.debug("transferFailed, pending timeout in transferPoll")
                        return [changed]
                    }
                    return []
                }
            } else {
                self.logger.debug("no remote transaction in ethWitdraw poll \(identifier)")
                return []
            }
        }

        let saveOperation = repository.saveOperation(saveClosure, { [] })
        saveOperation.addDependency(localTransactionOperation)

        return CompoundOperationWrapper(targetOperation: saveOperation,
                                        dependencies: [remoteTransactionOperation, localTransactionOperation])
    }

}
