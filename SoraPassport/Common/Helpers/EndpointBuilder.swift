/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache-2.0
*/

import Foundation

protocol EndpointBuilderProtocol {
    func buildParameterURL(_ value: String) throws -> URL
    func buildURL<T>(with parameters: T) throws -> URL where T: Encodable
    func buildRegex() throws -> String
}

enum EndpointBuilderError: Error {
    case unexpectedParameterStart
    case unexpectedParameterEnd
    case parameterNotFound
    case invalidUrl
    case invalidObject
    case paramMustConvertToString
    case singleParameterExpected
}

final class EndpointBuilder {
    static let paramStart = Character("{")
    static let paramEnd = Character("}")
    static let regexReplacement: String = "[^/?&]+"
    static let regexSpecialCharacters = CharacterSet(charactersIn: "+?.*")
    static let regexSkipString = "\\"

    let urlTemplate: String

    private lazy var encoder = JSONEncoder()

    init(urlTemplate: String) {
        self.urlTemplate = urlTemplate
    }

    private func process(urlTemplate: String, replacement block: (String) throws -> String) throws -> String {
        var result = String()
        var paramStartIndex: String.Index?

        for index in 0..<urlTemplate.count {
            let stringIndex = urlTemplate.index(urlTemplate.startIndex, offsetBy: index)

            if urlTemplate[stringIndex] == EndpointBuilder.paramStart {
                guard paramStartIndex == nil else {
                    throw EndpointBuilderError.unexpectedParameterStart
                }

                paramStartIndex = stringIndex
            } else if urlTemplate[stringIndex] == EndpointBuilder.paramEnd {
                guard let startIndex = paramStartIndex else {
                    throw EndpointBuilderError.unexpectedParameterEnd
                }

                let paramNameStart = urlTemplate.index(after: startIndex)
                let paramNameEnd = urlTemplate.index(before: stringIndex)

                let paramName = String(urlTemplate[paramNameStart...paramNameEnd])

                let replacement = try block(paramName)
                result.append(replacement)

                paramStartIndex = nil

            } else if paramStartIndex == nil {
                result.append(urlTemplate[stringIndex])
            }
        }

        return result
    }
}

extension EndpointBuilder: EndpointBuilderProtocol {
    func buildParameterURL(_ value: String) throws -> URL {
        var alreadyFilledParam: Bool = false

        let urlString = try process(urlTemplate: urlTemplate) { _ in
            guard !alreadyFilledParam else {
                throw EndpointBuilderError.singleParameterExpected
            }

            alreadyFilledParam = true

            return value
        }

        guard let url = URL(string: urlString) else {
            throw EndpointBuilderError.invalidUrl
        }

        return url
    }

    func buildURL<T>(with parameters: T) throws -> URL where T: Encodable {
        let data = try encoder.encode(parameters)

        guard let keyValueParam = (try? JSONSerialization.jsonObject(with: data)) as? [String: Any] else {
            throw EndpointBuilderError.invalidObject
        }

        let urlString = try process(urlTemplate: urlTemplate) { param in
            if let paramValue = keyValueParam[param] as? String {
                return paramValue
            }

            if let paramValue = keyValueParam[param] as? Int {
                return String(paramValue)
            }

            throw EndpointBuilderError.paramMustConvertToString
        }

        guard let url = URL(string: urlString) else {
            throw EndpointBuilderError.invalidUrl
        }

        return url
    }

    func buildRegex() throws -> String {
        let regexTemplate = urlTemplate.reduce(into: "") { (result, character) in
            if let scalar = character.unicodeScalars.first, EndpointBuilder.regexSpecialCharacters.contains(scalar) {
                result.append(EndpointBuilder.regexSkipString)
            }

            result.append(character)
        }

        return try process(urlTemplate: regexTemplate) { _ in
            return EndpointBuilder.regexReplacement
        }
    }
}
