/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache-2.0
*/

import UIKit
import SoraCrypto
import RobinHood

final class ActivityFeedViewFactory: ActivityFeedViewFactoryProtocol {
	static func createView() -> ActivityFeedViewProtocol? {
        guard let requestSigner = DARequestSigner.createDefault() else {
            Logger.shared.error("Can't create decentralized resolver url")
            return nil
        }

        let projectUnit = ApplicationConfig.shared.defaultProjectUnit

        guard let activityFeedDataProvider = createActivityFeedDataProvider(with: requestSigner,
            projectUnit: projectUnit) else {
                return nil
        }

        let announcementDataProvider = InformationDataProviderFacade.shared.announcementDataProvider

        let projectService = ProjectUnitService(unit: projectUnit)
        projectService.requestSigner = requestSigner

        let activityFeedViewModelFactory = createActivityFeedItemViewModelFactory()
        let announcementViewModelFactory = AnnouncementViewModelFactory()

        let view = ActivityFeedViewController(nib: R.nib.activityFeedViewController)
        let presenter = ActivityFeedPresenter(itemViewModelFactory: activityFeedViewModelFactory,
                                              announcementViewModelFactory: announcementViewModelFactory)
        let interactor = ActivityFeedInteractor(activityFeedDataProvider: activityFeedDataProvider,
                                                announcementDataProvider: announcementDataProvider,
                                                projectService: projectService)
        let wireframe = ActivityFeedWireframe()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.presenter = presenter

        presenter.logger = Logger.shared

        return view
	}

    static func createActivityFeedDataProvider(with requestSigner: DARequestSigner,
                                               projectUnit: ServiceUnit)
        -> SingleValueProvider<ActivityData, CDSingleValue>? {
        let activityFeedDataProviderFactory = ActivityFeedDataProviderFactory(
            requestSigner: requestSigner,
            projectUnit: projectUnit)

        let updateTrigger = DataProviderEventTrigger.onNone
        let optionalActivityFeedDataProvider = activityFeedDataProviderFactory
            .createActivityFeedDataProvider(with: ActivityFeedPresenter.eventsPerPage,
                                            updateTrigger: updateTrigger)
        guard let activityFeedDataProvider = optionalActivityFeedDataProvider  else {
            return nil
        }

        return activityFeedDataProvider
    }

    static func createActivityFeedItemViewModelFactory() -> ActivityFeedViewModelFactoryProtocol {
        let dateFormatterBuilder = CompoundDateFormatterBuilder()
        let activityFeedDateFormatter = dateFormatterBuilder
            .withToday(title: R.string.localizable.today())
            .withYesterday(title: R.string.localizable.yesterday())
            .withThisYear(dateFormatter: DateFormatter.sectionThisYear)
            .build(defaultFormat: R.string.localizable.anyYearFormat())

        let activityFeedViewModelFactory = ActivityFeedViewModelFactory(sectionDateFormatter: activityFeedDateFormatter,
                                                                        timestampDateFormatter: DateFormatter.timeOnly,
                                                                        votesNumberFormatter: NumberFormatter.vote,
                                                                        amountFormatter: NumberFormatter.amount,
                                                                        integerFormatter: NumberFormatter.anyInteger)
        return activityFeedViewModelFactory
    }
}