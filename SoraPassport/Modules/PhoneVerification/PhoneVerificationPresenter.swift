/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache-2.0
*/

import Foundation

final class PhoneVerificationPresenter {
    private struct Constants {
        static let defaultResendDelay = 60
        static let maxCodeLength = 4
    }

	weak var view: PhoneVerificationViewProtocol?
	var interactor: PhoneVerificationInteractorInputProtocol!
	var wireframe: PhoneVerificationWireframeProtocol!

    var logger: LoggerProtocol?

    private(set) var verificationState: VerificationState?
    lazy private(set) var countdownTimer: CountdownTimer = {
        return CountdownTimer(delegate: self)
    }()

    private func provideNewViewModel() {
        let viewModel = CodeInputViewModel.phone
        view?.didReceive(viewModel: viewModel)
    }

    private func updateVerificationState(with resendDelay: TimeInterval) {
        guard var verificationState = verificationState else {
            return
        }

        verificationState.didPerformAttempt(with: resendDelay)
        self.verificationState = verificationState

        interactor.save(verificationState: verificationState)

        updateResendCodeDisplayState()
    }

    private func updateResendCodeDisplayState() {
        guard let verificationState = verificationState else {
            return
        }

        if verificationState.canResendVerificationCode {
            view?.didUpdateResendRemained(delay: 0.0)
        } else {
            countdownTimer.start(with: verificationState.resendDelay)
        }
    }
}

extension PhoneVerificationPresenter: PhoneVerificationPresenterProtocol {
    func viewIsReady() {
        provideNewViewModel()

        view?.didStartLoading()

        interactor.fetchVerificationState()
    }

    func viewDidDisappear() {
        countdownTimer.stop()
    }

    func process(viewModel: CodeInputViewModelProtocol) {
        view?.didStartLoading()

        interactor.verifyPhone(code: viewModel.code)
    }

    func resendCode() {
        guard let verificationState = verificationState else {
            logger?.warning("Trying to resend code but verification state is unknown")
            return
        }

        let remainedDelay = verificationState.remainedDelay
        if remainedDelay > 0.0 {
            countdownTimer.start(with: remainedDelay)
            return
        }

        view?.didStartLoading()

        interactor.requestPhoneVerificationCode()
    }
}

extension PhoneVerificationPresenter: PhoneVerificationInteractorOutputProtocol {
    func didReceive(verificationCodeData: VerificationCodeData) {
        view?.didStopLoading()

        if verificationCodeData.status.isSuccess {
            let resendDelay = verificationCodeData.delay ?? Constants.defaultResendDelay
            updateVerificationState(with: TimeInterval(resendDelay))
        } else if let verificationRequestError = SmsCodeSendDataError.error(from: verificationCodeData.status) {
            if case .tooFrequentRequest = verificationRequestError {
                let resendDelay = verificationCodeData.delay ?? Constants.defaultResendDelay
                updateVerificationState(with: TimeInterval(resendDelay))

                wireframe.present(message: R.string.localizable.phoneVerificationTooFrequentMessage(),
                                  title: R.string.localizable.errorTitle(),
                                  closeAction: R.string.localizable.close(),
                                  from: view)
            } else {
                handleSendVerificationCode(error: verificationRequestError)
                updateResendCodeDisplayState()
            }
        } else {
            logger?.error("Unexpected phone verification status \(verificationCodeData.status.code)")
            updateResendCodeDisplayState()
        }
    }

    func didReceivePhoneVerificationCodeRequest(error: Error) {
        view?.didStopLoading()

        updateResendCodeDisplayState()

        if wireframe.present(error: error, from: view) {
            return
        }

        if let verificationRequestError = error as? SmsCodeSendDataError {
            handleSendVerificationCode(error: verificationRequestError)
        } else {
            logger?.error("Unexpected phone verification request error received \(error)")
        }
    }

    private func handleSendVerificationCode(error: SmsCodeSendDataError) {
        switch error {
        case .userNotFound, .userValuesNotFound:
            wireframe.present(message: R.string.localizable.phoneVerificationUserNotFoundMessage(),
                              title: R.string.localizable.errorTitle(),
                              closeAction: R.string.localizable.close(),
                              from: view)
        case .tooFrequentRequest:
            wireframe.present(message: R.string.localizable.phoneVerificationTooFrequentMessage(),
                              title: R.string.localizable.errorTitle(),
                              closeAction: R.string.localizable.close(),
                              from: view)
        }
    }

    func didVerifyPhoneCode() {
        view?.didStopLoading()

        interactor.removeVerificationState()
        wireframe.showAccessBackup(from: view)
    }

    func didReceivePhoneVerification(error: Error) {
        view?.didStopLoading()

        updateResendCodeDisplayState()

        if wireframe.present(error: error, from: view) {
            return
        }

        if let verificationError = error as? SmsCodeVerifyDataError {
            switch verificationError {
            case .userNotFound:
                wireframe.present(message: R.string.localizable.phoneVerificationUserNotFoundMessage(),
                                  title: R.string.localizable.errorTitle(),
                                  closeAction: R.string.localizable.close(),
                                  from: view)
            case .smsCodeExpired:
                wireframe.present(message: R.string.localizable.phoneVerificationCodeExpiredMessage(),
                                  title: R.string.localizable.errorTitle(),
                                  closeAction: R.string.localizable.close(),
                                  from: view)
            case .smsCodeIncorrect:
                wireframe.present(message: R.string.localizable.phoneVerificationCodeIncorrectMessage(),
                                  title: R.string.localizable.errorTitle(),
                                  closeAction: R.string.localizable.close(),
                                  from: view)

                provideNewViewModel()
            case .smsCodeNotFound:
                wireframe.present(message: R.string.localizable.phoneVerificationCodeNotFoundMessage(),
                                  title: R.string.localizable.errorTitle(),
                                  closeAction: R.string.localizable.close(),
                                  from: view)
            }
        } else {
            logger?.error("Unexpected phone verification error received \(error)")
        }
    }

    func didReceive(verificationState: VerificationState?) {
        view?.didStopLoading()

        if let currentVerificationState = verificationState {
            self.verificationState = currentVerificationState
        } else {
            let currentVerificationState = VerificationState()
            self.verificationState = currentVerificationState

            interactor.save(verificationState: currentVerificationState)
        }

        resendCode()
    }
}

extension PhoneVerificationPresenter: CountdownTimerDelegate {
    func didStart(with interval: TimeInterval) {
        view?.didUpdateResendRemained(delay: interval)
    }

    func didCountdown(remainedInterval: TimeInterval) {
        view?.didUpdateResendRemained(delay: remainedInterval)
    }

    func didStop(with remainedInterval: TimeInterval) {
        view?.didUpdateResendRemained(delay: 0.0)
    }
}
