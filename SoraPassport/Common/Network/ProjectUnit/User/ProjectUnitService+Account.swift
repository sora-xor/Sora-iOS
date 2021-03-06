/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import RobinHood

extension ProjectUnitService: ProjectUnitAccountProtocol {
    func registerCustomer(with info: RegistrationInfo,
                          runCompletionIn queue: DispatchQueue,
                          completionBlock: @escaping NetworkBoolResultCompletionBlock) throws -> Operation {

        guard let service = unit.service(for: ProjectServiceType.register.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.registrationOperation(service.serviceEndpoint, with: info)
        operation.requestModifier = requestSigner

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }

    func createCustomer(with info: UserCreationInfo,
                        runCompletionIn queue: DispatchQueue,
                        completionBlock: @escaping NetworkVerificationCodeCompletionBlock) throws -> Operation {

        guard let service = unit.service(for: ProjectServiceType.createUser.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.createUserOperation(service.serviceEndpoint, with: info)
        operation.requestModifier = requestSigner

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }

    func fetchCustomer(runCompletionIn queue: DispatchQueue,
                       completionBlock: @escaping NetworkUserCompletionBlock) throws -> Operation {

        guard let service = unit.service(for: ProjectServiceType.customer.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.fetchCustomerOperation(service.serviceEndpoint)
        operation.requestModifier = requestSigner

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }

    func updateCustomer(with info: PersonalInfo,
                        runCompletionIn queue: DispatchQueue,
                        completionBlock: @escaping NetworkBoolResultCompletionBlock) throws -> Operation {
        guard let service = unit.service(for: ProjectServiceType.customerUpdate.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.updateCustomerOperation(service.serviceEndpoint,
                                                                 info: info)
        operation.requestModifier = requestSigner

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }

    func applyInvitation(code: String, runCompletionIn queue: DispatchQueue,
                         completionBlock: @escaping NetworkEmptyCompletionBlock) throws -> Operation {
        guard let service = unit.service(for: ProjectServiceType.applyInvitation.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.applyInvitationCodeOperation(service.serviceEndpoint, code: code)
        operation.requestModifier = requestSigner

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }

    func checkInvitation(for deviceInfo: DeviceInfo,
                         runCompletionIn queue: DispatchQueue,
                         completionBlock: @escaping NetworkCheckInvitationCompletionBlock) throws -> Operation {
        guard let service = unit.service(for: ProjectServiceType.checkInvitation.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.checkInvitation(service.serviceEndpoint, deviceInfo: deviceInfo)

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }

    func fetchActivatedInvitations(runCompletionIn queue: DispatchQueue,
                                   completionBlock: @escaping NetworkFetchInvitedCompletionBlock) throws -> Operation {
        guard let service = unit.service(for: ProjectServiceType.fetchInvited.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.fetchActivatedInvitationsOperation(service.serviceEndpoint)
        operation.requestModifier = requestSigner

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }

    func fetchReputation(runCompletionIn queue: DispatchQueue,
                         completionBlock: @escaping NetworkReputationCompletionBlock) throws -> Operation {

        guard let service = unit.service(for: ProjectServiceType.reputation.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.fetchReputationOperation(service.serviceEndpoint)
        operation.requestModifier = requestSigner

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }

    func sendSmsCode(runCompletionIn queue: DispatchQueue,
                     completionBlock: @escaping NetworkVerificationCodeCompletionBlock) throws -> Operation {
        guard let service = unit.service(for: ProjectServiceType.smsSend.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.sendSmsCodeOperation(service.serviceEndpoint)
        operation.requestModifier = requestSigner

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }

    func verifySms(codeInfo: VerificationCodeInfo, runCompletionIn queue: DispatchQueue,
                   completionBlock: @escaping NetworkBoolResultCompletionBlock) throws -> Operation {
        guard let service = unit.service(for: ProjectServiceType.smsVerify.rawValue) else {
            throw NetworkUnitError.serviceUnavailable
        }

        let operation = operationFactory.verifySmsCodeOperation(service.serviceEndpoint, info: codeInfo)
        operation.requestModifier = requestSigner

        operation.completionBlock = {
            queue.async {
                completionBlock(operation.result)
            }
        }

        execute(operations: [operation])

        return operation
    }
}
