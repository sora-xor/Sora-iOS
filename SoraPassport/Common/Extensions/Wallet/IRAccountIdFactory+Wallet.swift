/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import IrohaCommunication

extension IRAccountIdFactory {
    static func createAccountNameFrom(decentralizedId: String) -> String {
        return decentralizedId.replacingOccurrences(of: ":", with: "_")
    }

    static func createAccountIdFrom(decentralizedId: String, domain: IRDomain) throws -> IRAccountId {
        let accountName = self.createAccountNameFrom(decentralizedId: decentralizedId)
        return try accountId(withName: accountName, domain: domain)
    }
}
