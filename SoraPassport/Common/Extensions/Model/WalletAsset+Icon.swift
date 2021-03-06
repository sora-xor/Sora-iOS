/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import CommonWallet

extension WalletAsset {
    var icon: UIImage? {
        switch self.symbol {
        case String.xor:
            return R.image.iconXor()
        case String.val:
            return R.image.iconVal()
        case String.eth:
            return R.image.iconValErc()
        default:
            return UIImage()

        }

    }
}
