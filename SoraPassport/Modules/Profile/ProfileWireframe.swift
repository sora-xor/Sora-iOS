/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation

final class ProfileWireframe: ProfileWireframeProtocol, AuthorizationPresentable {
    func showReputationView(from view: ProfileViewProtocol?) {
        guard let reputationView = ReputationViewFactory.createView() else {
            return
        }

        if let navigationController = view?.controller.navigationController {
            reputationView.controller.hidesBottomBarWhenPushed = true
            navigationController.pushViewController(reputationView.controller, animated: true)
        }
    }

    func showVotesHistoryView(from view: ProfileViewProtocol?) {
        guard let votesHistoryView = VotesHistoryViewFactory.createView() else {
            return
        }

        if let navigationController = view?.controller.navigationController {
            votesHistoryView.controller.hidesBottomBarWhenPushed = true
            navigationController.pushViewController(votesHistoryView.controller, animated: true)
        }
    }

    func showPersonalDetailsView(from view: ProfileViewProtocol?) {
        guard let personalUpdateView = PersonalUpdateViewFactory.createView() else {
            return
        }

        if let navigationController = view?.controller.navigationController {
            personalUpdateView.controller.hidesBottomBarWhenPushed = true
            navigationController.pushViewController(personalUpdateView.controller, animated: true)
        }
    }

    func showPassphraseView(from view: ProfileViewProtocol?) {
        authorize(animated: true, cancellable: true) { (isAuthorized) in
            if isAuthorized {
                guard let passphraseView = PassphraseViewFactory.createView() else {
                    return
                }

                if let navigationController = view?.controller.navigationController {
                    passphraseView.controller.hidesBottomBarWhenPushed = true
                    navigationController.pushViewController(passphraseView.controller, animated: true)
                }
            }
        }
    }

    func showLanguageSelection(from view: ProfileViewProtocol?) {
        guard let languageSelection = LanguageSelectionViewFactory.createView() else {
            return
        }

        if let navigationController = view?.controller.navigationController {
            languageSelection.controller.hidesBottomBarWhenPushed = true
            navigationController.pushViewController(languageSelection.controller, animated: true)
        }
    }

    func showAbout(from view: ProfileViewProtocol?) {
        guard let aboutView = AboutViewFactory.createView() else {
            return
        }

        if let navigationController = view?.controller.navigationController {
            aboutView.controller.hidesBottomBarWhenPushed = true
            navigationController.pushViewController(aboutView.controller, animated: true)
        }
    }
}
