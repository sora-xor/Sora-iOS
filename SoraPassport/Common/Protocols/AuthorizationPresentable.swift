/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache-2.0
*/

import UIKit

typealias AuthorizationCompletionBlock = (Bool) -> Void

protocol AuthorizationPresentable: ScreenAuthorizationWireframeProtocol {
    func authorize(animated: Bool, with completionBlock: @escaping AuthorizationCompletionBlock)
}

private let authorization = UUID().uuidString

private struct AuthorizationConstants {
    static var completionBlockKey: String = "co.jp.sora.auth.delegate"
    static var authorizationViewKey: String = "co.jp.sora.auth.view"
}

extension AuthorizationPresentable {
    private var completionBlock: AuthorizationCompletionBlock? {
        get {
            return objc_getAssociatedObject(authorization, &AuthorizationConstants.completionBlockKey)
                as? AuthorizationCompletionBlock
        }

        set {
            objc_setAssociatedObject(authorization,
                                     &AuthorizationConstants.completionBlockKey,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN)
        }
    }

    private var authorizationView: PinSetupViewProtocol? {
        get {
            return objc_getAssociatedObject(authorization, &AuthorizationConstants.authorizationViewKey)
                as? PinSetupViewProtocol
        }

        set {
            objc_setAssociatedObject(authorization,
                                     &AuthorizationConstants.authorizationViewKey,
                                     newValue,
                                     .OBJC_ASSOCIATION_RETAIN)
        }
    }

    private var isAuthorizing: Bool {
        return authorizationView != nil
    }
}

extension AuthorizationPresentable {
    func authorize(animated: Bool, with completionBlock: @escaping AuthorizationCompletionBlock) {
        guard let rootController = UIApplication.shared.keyWindow?.rootViewController else {
            return
        }

        guard !isAuthorizing else {
            return
        }

        guard let authorizationView = PinViewFactory.createScreenAuthorizationView(with: self) else {
            completionBlock(false)
            return
        }

        self.completionBlock = completionBlock
        self.authorizationView = authorizationView

        authorizationView.controller.modalTransitionStyle = .crossDissolve
        rootController.present(authorizationView.controller, animated: animated, completion: nil)
    }
}

extension AuthorizationPresentable {
    func showAuthorizationCompletion(with result: Bool) {
        guard let completionBlock = completionBlock else {
            return
        }

        self.completionBlock = nil

        guard let authorizationView = authorizationView else {
            return
        }

        authorizationView.controller.presentingViewController?.dismiss(animated: true) {
            self.authorizationView = nil
            completionBlock(result)
        }
    }
}