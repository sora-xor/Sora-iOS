/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache-2.0
*/

import Foundation

protocol PhoneVerificationViewProtocol: ControllerBackedProtocol, LoadableViewProtocol {
    func didReceive(viewModel: CodeInputViewModelProtocol)
    func didUpdateResendRemained(delay: TimeInterval)
}

protocol PhoneVerificationPresenterProtocol: class {
    func viewIsReady()
    func viewDidDisappear()
    func process(viewModel: CodeInputViewModelProtocol)
    func resendCode()
}

protocol PhoneVerificationInteractorInputProtocol: class {
    func fetchVerificationState()
    func save(verificationState: VerificationState)
    func removeVerificationState()

    func requestPhoneVerificationCode()
    func verifyPhone(code: String)
}

protocol PhoneVerificationInteractorOutputProtocol: class {
    func didReceive(verificationCodeData: VerificationCodeData)
    func didReceivePhoneVerificationCodeRequest(error: Error)
    func didVerifyPhoneCode()
    func didReceivePhoneVerification(error: Error)
    func didReceive(verificationState: VerificationState?)
}

protocol PhoneVerificationWireframeProtocol: AlertPresentable, ErrorPresentable {
    func showAccessBackup(from view: PhoneVerificationViewProtocol?)
}

protocol PhoneVerificationViewFactoryProtocol: class {
	static func createView() -> PhoneVerificationViewProtocol?
}