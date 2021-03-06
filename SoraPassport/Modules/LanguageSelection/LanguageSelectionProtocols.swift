/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

protocol LanguageSelectionViewProtocol: SelectionListViewProtocol {}

protocol LanguageSelectionPresenterProtocol: SelectionListPresenterProtocol {
    func setup()
}

protocol LanguageSelectionInteractorInputProtocol: class {
    func load()
    func select(language: Language)
}

protocol LanguageSelectionInteractorOutputProtocol: class {
    func didLoad(selectedLanguage: Language)
    func didLoad(languages: [Language])
}

protocol LanguageSelectionWireframeProtocol: class {}

protocol LanguageSelectionViewFactoryProtocol: class {
	static func createView() -> LanguageSelectionViewProtocol?
}
