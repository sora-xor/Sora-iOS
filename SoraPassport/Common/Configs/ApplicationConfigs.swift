/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache-2.0
*/

import Foundation
import os

protocol ApplicationConfigProtocol {
    var projectDecentralizedId: String { get }
    var notificationDecentralizedId: String { get }
    var notificationOptions: UInt8 { get }
    var walletDecentralizedId: String { get }
    var didResolverUrl: String { get }
    var decentralizedDomain: String { get }
    var assetName: String { get }
    var defaultProjectUnit: ServiceUnit { get }
    var defaultNotificationUnit: ServiceUnit { get }
    var defaultWalletUnit: ServiceUnit { get }
    var howItWorksUrl: String { get }
    var invitationAboutUrl: String { get }
    var directInviteUrl: String { get }
    var promoUrl: String { get }
    var defaultCurrency: CurrencyItemData { get }

    var supportEmail: String { get }
    var termsURL: URL { get }
}

private struct InternalConfig: Codable {
    enum CodingKeys: String, CodingKey {
        case projectDecentralizedId = "projectDID"
        case notificationDecentralizedId = "notificationDID"
        case notificationOptions = "notificationOptions"
        case walletDecentralizedId = "walletDID"
        case didResolverUrl = "didResolverUrl"
        case defaultProjectUnit = "projectUnit"
        case defaultNotificationUnit = "notificationUnit"
        case defaultWalletUnit = "walletUnit"
        case decentralizedDomain = "decentralizedDomain"
        case assetName = "assetName"
        case howItWorksUrl = "howItWorksUrl"
        case invitationAboutUrl = "invitationAboutUrl"
        case directInviteLink = "directInviteUrl"
        case promoLink = "promoUrl"
        case defaultCurrency = "currency"
    }

    var projectDecentralizedId: String
    var notificationDecentralizedId: String
    var notificationOptions: UInt8
    var walletDecentralizedId: String
    var didResolverUrl: String
    var decentralizedDomain: String
    var assetName: String
    var defaultProjectUnit: ServiceUnit
    var defaultNotificationUnit: ServiceUnit
    var defaultWalletUnit: ServiceUnit
    var howItWorksUrl: String
    var invitationAboutUrl: String
    var directInviteLink: String
    var promoLink: String
    var defaultCurrency: CurrencyItemData
}

final class ApplicationConfig {
    static let shared: ApplicationConfig! = ApplicationConfig()

    static var logger: LoggerProtocol = Logger.shared

    private struct Constants {
        static let infoConfigKey = "AppConfigName"
        static let configFilename = "appConfig"
        static let configFileExt = "plist"
    }

    private var config: InternalConfig

    private convenience init?() {
        guard let configName = Bundle.main.object(forInfoDictionaryKey: Constants.infoConfigKey) as? String else {
            ApplicationConfig.logger.error("""
                Please, provide configuration in info.plist under
                \(Constants.infoConfigKey) key
                """)

            return nil
        }

        self.init(configName: configName)
    }

    init?(configName: String) {
        guard let configURL = Bundle.main
            .url(forResource: Constants.configFilename, withExtension: Constants.configFileExt) else {
                ApplicationConfig.logger
                    .error("Please, check that \(Constants.configFilename).\(Constants.configFileExt) exists")
                return nil
        }

        guard let configData = try? Data(contentsOf: configURL) else {
            ApplicationConfig.logger.error("Can't read config data at url \(configURL.absoluteString)")
            return nil
        }

        guard let root = try? PropertyListDecoder().decode([String: InternalConfig].self, from: configData) else {
            ApplicationConfig.logger.error("Can't parse config data at url \(configURL.absoluteString)")
            return nil
        }

        guard let config = root[configName] else {
            ApplicationConfig.logger.error("Can't find configuration with name \(configName)")
            return nil
        }

        self.config = config
    }
}

extension ApplicationConfig: ApplicationConfigProtocol {
    var projectDecentralizedId: String {
        return config.projectDecentralizedId
    }

    var notificationDecentralizedId: String {
        return config.notificationDecentralizedId
    }

    var notificationOptions: UInt8 {
        return config.notificationOptions
    }

    var walletDecentralizedId: String {
        return config.walletDecentralizedId
    }

    var didResolverUrl: String {
        return config.didResolverUrl
    }

    var defaultProjectUnit: ServiceUnit {
        return config.defaultProjectUnit
    }

    var defaultNotificationUnit: ServiceUnit {
        return config.defaultNotificationUnit
    }

    var defaultWalletUnit: ServiceUnit {
        return config.defaultWalletUnit
    }

    var decentralizedDomain: String {
        return config.decentralizedDomain
    }

    var assetName: String {
        return config.assetName
    }

    var howItWorksUrl: String {
        return config.howItWorksUrl
    }

    var invitationAboutUrl: String {
        return config.invitationAboutUrl
    }

    var directInviteUrl: String {
        return config.directInviteLink
    }

    var promoUrl: String {
        return config.promoLink
    }

    var defaultCurrency: CurrencyItemData {
        return config.defaultCurrency
    }

    var supportEmail: String {
        return "sora@soramitsu.co.jp"
    }

    var termsURL: URL {
        return URL(string: "https://sora.org/terms")!
    }
}