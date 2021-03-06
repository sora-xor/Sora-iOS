/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import SoraKeystore

final class PhoneVerificationInteractor {
	weak var presenter: PhoneVerificationInteractorOutputProtocol?

    private(set) var projectService: ProjectUnitService
    private(set) var settings: SettingsManagerProtocol

    init(projectService: ProjectUnitService, settings: SettingsManagerProtocol) {
        self.projectService = projectService
        self.settings = settings
    }
}

extension PhoneVerificationInteractor: PhoneVerificationInteractorInputProtocol {
    func fetchVerificationState() {
        presenter?.didReceive(verificationState: settings.verificationState)
    }

    func save(verificationState: VerificationState) {
        settings.verificationState = verificationState
    }

    func requestPhoneVerificationCode() {
        do {
            _ = try projectService.sendSmsCode(runCompletionIn: .main) { [weak self] (optionalResult) in
                if let result = optionalResult {
                    switch result {
                    case .success(let verificationCodeData):
                        self?.presenter?.didReceive(verificationCodeData: verificationCodeData)
                    case .failure(let error):
                        self?.presenter?.didReceivePhoneVerificationCodeRequest(error: error)
                    }
                }
            }
        } catch {
            presenter?.didReceivePhoneVerificationCodeRequest(error: error)
        }
    }

    func verifyPhone(codeInfo: VerificationCodeInfo) {
        do {
            _ = try projectService.verifySms(codeInfo: codeInfo,
                                             runCompletionIn: .main) { [weak self] (optionalResult) in
                if let result = optionalResult {
                    switch result {
                    case .success:
                        self?.presenter?.didVerifyPhoneCode()
                    case .failure(let error):
                        self?.presenter?.didReceivePhoneVerification(error: error)
                    }
                }
            }
        } catch {
            presenter?.didReceivePhoneVerification(error: error)
        }
    }
}
