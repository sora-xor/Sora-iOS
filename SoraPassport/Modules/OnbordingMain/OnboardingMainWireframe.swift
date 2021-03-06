/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation

final class OnboardingMainWireframe: OnboardingMainWireframeProtocol {
    lazy var rootAnimator: RootControllerAnimationCoordinatorProtocol = RootControllerAnimationCoordinator()

    func showSignup(from view: OnboardingMainViewProtocol?) {
        guard let selectCountryView = SelectCountryViewFactory.createView() else {
            return
        }

        if let navigationController = view?.controller.navigationController {
            navigationController.pushViewController(selectCountryView.controller, animated: true)
        }
    }

    func showAccountRestore(from view: OnboardingMainViewProtocol?) {
        guard let restorationController = AccessRestoreViewFactory.createView()?.controller else {
            return
        }

        if let navigationController = view?.controller.navigationController {
            navigationController.pushViewController(restorationController, animated: true)
        }
    }
}
