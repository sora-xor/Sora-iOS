/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import SoraKeystore
import SoraFoundation

class PinViewFactory: PinViewFactoryProtocol {
    static func createPinSetupView() -> PinSetupViewProtocol? {
        let pinSetupView = PinSetupViewController(nib: R.nib.pinSetupViewController)

        pinSetupView.mode = .create

        let presenter = PinSetupPresenter()
        let config = ApplicationConfig.shared!
        let projectService = ProjectUnitService(unit: config.defaultProjectUnit)
        let interactor = PinSetupInteractor(secretManager: KeychainManager.shared,
                                            settingsManager: SettingsManager.shared,
                                            biometryAuth: BiometryAuth(),
                                            config: config as ApplicationConfigProtocol,
                                            projectService: projectService)
        let wireframe = PinSetupWireframe()

        pinSetupView.presenter = presenter
        presenter.view = pinSetupView
        presenter.interactor = interactor
        presenter.wireframe = wireframe

        interactor.presenter = presenter

        pinSetupView.localizationManager = LocalizationManager.shared

        return pinSetupView
    }

    static func createSecuredPinView() -> PinSetupViewProtocol? {
        let pinVerifyView = PinSetupViewController(nib: R.nib.pinSetupViewController)

        pinVerifyView.mode = .securedInput

        let presenter = LocalAuthPresenter()
        let interactor = LocalAuthInteractor(secretManager: KeychainManager.shared,
                                             settingsManager: SettingsManager.shared,
                                             biometryAuth: BiometryAuth(),
                                             locale: LocalizationManager.shared.selectedLocale)
        let wireframe = PinSetupWireframe()

        pinVerifyView.presenter = presenter
        presenter.interactor = interactor
        presenter.view = pinVerifyView
        presenter.wireframe = wireframe

        interactor.presenter = presenter

        pinVerifyView.localizationManager = LocalizationManager.shared

        return pinVerifyView
    }

    static func createScreenAuthorizationView(with wireframe: ScreenAuthorizationWireframeProtocol, cancellable: Bool)
        -> PinSetupViewProtocol? {
        let pinVerifyView = PinSetupViewController(nib: R.nib.pinSetupViewController)
        pinVerifyView.cancellable = cancellable

        pinVerifyView.mode = .securedInput

        let presenter = ScreenAuthorizationPresenter()
        let interactor = LocalAuthInteractor(secretManager: KeychainManager.shared,
                                             settingsManager: SettingsManager.shared,
                                             biometryAuth: BiometryAuth(),
                                             locale: LocalizationManager.shared.selectedLocale)

        pinVerifyView.presenter = presenter
        presenter.interactor = interactor
        presenter.view = pinVerifyView
        presenter.wireframe = wireframe

        interactor.presenter = presenter

        pinVerifyView.localizationManager = LocalizationManager.shared

        return pinVerifyView
    }
}
