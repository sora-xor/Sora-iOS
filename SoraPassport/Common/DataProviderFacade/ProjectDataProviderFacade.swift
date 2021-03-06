/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import SoraCrypto
import RobinHood

final class ProjectDataProviderFacade: ProjectDataProviderFacadeProtocol {
    static let allDomain = "co.jp.sora.projects.all"
    static let favoriteDomain = "co.jp.sora.projects.favorite"
    static let votedDomain = "co.jp.sora.projects.voted"
    static let finishedDomain = "co.jp.sora.projects.finished"

    static let shared: ProjectDataProviderFacade = ProjectDataProviderFacade()

    let pageSize: UInt = 50

    lazy var config: ApplicationConfigProtocol = ApplicationConfig.shared
    lazy var requestSigner: DARequestSigner = DARequestSigner.createDefault(with: Logger.shared)!
    lazy var coreDataCacheFacade: CoreDataCacheFacadeProtocol = CoreDataCacheFacade.shared

    let executionQueue: OperationQueue
    private let serialCacheQueue: DispatchQueue

    lazy private(set) var allProjectsProvider: DataProvider<ProjectData> = {
        let source = AnyDataProviderSource(fetchByPage: self.fetchAllProjectsByPageOperation,
                                           fetchById: self.fetchProjectByIdOperation)

        return createProjectDataProvider(with: source, domain: ProjectDataProviderFacade.allDomain)
    }()

    lazy private(set) var favoriteProjectsProvider: DataProvider<ProjectData> = {
        let source = AnyDataProviderSource(fetchByPage: self.fetchFavoriteProjectsByPageOperation,
                                           fetchById: self.fetchProjectByIdOperation)

        return createProjectDataProvider(with: source, domain: ProjectDataProviderFacade.favoriteDomain)
    }()

    lazy private(set) var votedProjectsProvider: DataProvider<ProjectData> = {
        let source = AnyDataProviderSource(fetchByPage: self.fetchVotedProjectsByPageOperation,
                                           fetchById: self.fetchProjectByIdOperation)

        return createProjectDataProvider(with: source, domain: ProjectDataProviderFacade.votedDomain)
    }()

    lazy private(set) var finishedProjectsProvider: DataProvider<ProjectData> = {
        let source = AnyDataProviderSource(fetchByPage: self.fetchFinishedProjectsByPageOperation,
                                           fetchById: self.fetchProjectByIdOperation)

        return createProjectDataProvider(with: source, domain: ProjectDataProviderFacade.finishedDomain)
    }()

    init() {
        executionQueue = OperationQueue()
        serialCacheQueue = DispatchQueue(label: "co.jp.sora.project.dataprovider.facade")
    }

    private func createProjectDataProvider(with source: AnyDataProviderSource<ProjectData>,
                                           domain: String,
                                           updateTrigger: DataProviderTriggerProtocol = DataProviderEventTrigger.onNone)
        -> DataProvider<ProjectData> {

            let filter = NSPredicate(format: "%K == %@", #keyPath(CDProject.domain), domain)
            let mapper = ProjectDataMapper(domain: domain)

        let cache: CoreDataRepository<ProjectData, CDProject> = self.coreDataCacheFacade
            .createCoreDataCache(filter: filter, mapper: AnyCoreDataMapper(mapper))

        return DataProvider(source: source,
                            repository: AnyDataProviderRepository(cache),
                            updateTrigger: updateTrigger,
                            executionQueue: executionQueue,
                            serialSyncQueue: serialCacheQueue)
    }

    // MARK: Domain Operations

    private func fetchAllProjectsByPageOperation(_ page: UInt) -> CompoundOperationWrapper<[ProjectData]> {
        guard let service = self.config.defaultProjectUnit.service(for: ProjectServiceType.fetch.rawValue) else {
            let operation = BaseOperation<[ProjectData]>()
            operation.result = .failure(NetworkUnitError.serviceUnavailable)
            return CompoundOperationWrapper(targetOperation: operation)
        }

        return fetchProjectsOperation(service.serviceEndpoint, page: page)
    }

    private func fetchFavoriteProjectsByPageOperation(_ page: UInt)
        -> CompoundOperationWrapper<[ProjectData]> {
        guard let service = self.config.defaultProjectUnit.service(for: ProjectServiceType.favorites.rawValue) else {
            let operation = BaseOperation<[ProjectData]>()
            operation.result = .failure(NetworkUnitError.serviceUnavailable)
            return CompoundOperationWrapper(targetOperation: operation)
        }

        return fetchProjectsOperation(service.serviceEndpoint, page: page)
    }

    private func fetchVotedProjectsByPageOperation(_ page: UInt)
        -> CompoundOperationWrapper<[ProjectData]> {
        guard let service = self.config.defaultProjectUnit.service(for: ProjectServiceType.voted.rawValue) else {
            let operation = BaseOperation<[ProjectData]>()
            operation.result = .failure(NetworkUnitError.serviceUnavailable)
            return CompoundOperationWrapper(targetOperation: operation)
        }

        return fetchProjectsOperation(service.serviceEndpoint, page: page)
    }

    private func fetchFinishedProjectsByPageOperation(_ page: UInt)
        -> CompoundOperationWrapper<[ProjectData]> {
        guard let service = self.config.defaultProjectUnit.service(for: ProjectServiceType.finished.rawValue) else {
            let operation = BaseOperation<[ProjectData]>()
            operation.result = .failure(NetworkUnitError.serviceUnavailable)
            return CompoundOperationWrapper(targetOperation: operation)
        }

        return fetchProjectsOperation(service.serviceEndpoint, page: page)
    }

    private func fetchProjectsOperation(_ endpoint: String, page: UInt)
        -> CompoundOperationWrapper<[ProjectData]> {
        let pagination = OffsetPagination(offset: Int(page * pageSize),
                                          count: Int(pageSize))

        let operation = ProjectOperationFactory().fetchProjectsOperation(endpoint,
                                                                         pagination: pagination)

        operation.requestModifier = requestSigner

        return CompoundOperationWrapper(targetOperation: operation)
    }

    private func fetchProjectByIdOperation(_ identifier: String) -> CompoundOperationWrapper<ProjectData?> {
        let operation = BaseOperation<ProjectData?>()
        operation.result = .success(nil)
        return CompoundOperationWrapper(targetOperation: operation)
    }
}
