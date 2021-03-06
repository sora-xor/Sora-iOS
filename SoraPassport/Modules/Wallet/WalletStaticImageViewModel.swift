/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation
import CommonWallet

final class WalletStaticImageViewModel: WalletImageViewModelProtocol {
    let staticImage: UIImage

    init(staticImage: UIImage) {
        self.staticImage = staticImage
    }

    var image: UIImage? { staticImage }

    func loadImage(with completionBlock: @escaping (UIImage?, Error?) -> Void) {
        completionBlock(image, nil)
    }

    func cancel() {}
}
