/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation

struct InvitedUserData: Codable, Equatable {
    enum CodingKeys: String, CodingKey {
        case userId
        case firstName
        case lastName
    }

    var userId: String
    var firstName: String
    var lastName: String
}
