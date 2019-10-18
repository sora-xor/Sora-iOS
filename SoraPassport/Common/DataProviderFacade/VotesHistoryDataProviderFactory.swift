/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import SoraCrypto
import RobinHood

protocol VotesHistoryDataProviderFactoryProtocol {
    func createVotesHistoryDataProvider(with pageSize: Int, updateTrigger: DataProviderTriggerProtocol)
        -> SingleValueProvider<[VotesHistoryEventData], CDSingleValue>?
}

final class VotesHistoryDataProviderFactory {
    private struct Constants {
        static let targetIdentifier = "co.jp.sora.projects.votes.history"
        static let domain = "co.jp.sora.projects"
    }

    private(set) var requestSigner: DARequestSigner
    private(set) var projectUnit: ServiceUnit

    lazy var coreDataCacheFacade: CoreDataCacheFacadeProtocol = CoreDataCacheFacade.shared

    lazy private var projectUnitOperationFactory = ProjectOperationFactory()

    init(requestSigner: DARequestSigner, projectUnit: ServiceUnit) {
        self.requestSigner = requestSigner
        self.projectUnit = projectUnit
    }
}

extension VotesHistoryDataProviderFactory: VotesHistoryDataProviderFactoryProtocol {
    func createVotesHistoryDataProvider(with pageSize: Int, updateTrigger: DataProviderTriggerProtocol)
        -> SingleValueProvider<[VotesHistoryEventData], CDSingleValue>? {
        guard let service = projectUnit.service(for: ProjectServiceType.votesHistory.rawValue) else {
            return nil
        }

        let cache: CoreDataCache<SingleValueProviderObject, CDSingleValue> = coreDataCacheFacade
            .createCoreDataCache(domain: Constants.domain)

        let info = Pagination(offset: 0, count: pageSize)
        let fetchVotesHistoryBlock: () -> BaseOperation<[VotesHistoryEventData]> = {
            let votesHistoryOperation = self.projectUnitOperationFactory
                .fetchVotesHistory(service.serviceEndpoint, with: info)
            votesHistoryOperation.requestModifier = self.requestSigner

            return votesHistoryOperation
        }

        let source = AnySingleValueProviderSource(base: self, fetch: fetchVotesHistoryBlock)

        return SingleValueProvider(targetIdentifier: Constants.targetIdentifier,
                                   source: source,
                                   cache: cache,
                                   updateTrigger: updateTrigger)
    }
}
