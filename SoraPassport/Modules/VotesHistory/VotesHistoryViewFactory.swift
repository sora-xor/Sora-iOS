/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import UIKit
import SoraCrypto
import RobinHood
import SoraFoundation

final class VotesHistoryViewFactory: VotesHistoryViewFactoryProtocol {
	static func createView() -> VotesHistoryViewProtocol? {
        guard let requestSigner = DARequestSigner.createDefault() else {
            Logger.shared.error("Can't create decentralized resolver url")
            return nil
        }

        let locale = LocalizationManager.shared.selectedLocale

        let projectUnit = ApplicationConfig.shared.defaultProjectUnit

        let votesHistoryDataProviderFactory = VotesHistoryDataProviderFactory(requestSigner: requestSigner,
                                                                              projectUnit: projectUnit)

        let updateTrigger = DataProviderEventTrigger.onNone
        let optionalVotesHistoryDataProvider = votesHistoryDataProviderFactory
            .createVotesHistoryDataProvider(with: VotesHistoryPresenter.eventsPerPage,
                                            updateTrigger: updateTrigger)
        guard let votesHistoryDataProvider = optionalVotesHistoryDataProvider  else {
                return nil
        }

        let projectService = ProjectUnitService(unit: projectUnit)
        projectService.requestSigner = requestSigner

        let dateFormatterProvider = DateFormatterProvider(dateFormatterFactory: EventListDateFormatterFactory.self,
                                                          dayChangeHandler: DayChangeHandler())

        let amountFormatter = NumberFormatter.vote.localizableResource()
        let votesHistoryViewModelFactory = VotesHistoryViewModelFactory(amountFormatter: amountFormatter,
                                                                        dateFormatterProvider: dateFormatterProvider)

        let view = VotesHistoryViewController(nib: R.nib.votesHistoryViewController)
        let presenter = VotesHistoryPresenter(locale: locale, viewModelFactory: votesHistoryViewModelFactory)
        let interactor = VotesHistoryInteractor(votesHistoryDataProvider: votesHistoryDataProvider,
                                                projectService: projectService)
        let wireframe = VotesHistoryWireframe()

        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.wireframe = wireframe
        interactor.presenter = presenter

        view.locale = locale

        presenter.logger = Logger.shared

        return view
	}
}
