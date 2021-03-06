/**
* Copyright Soramitsu Co., Ltd. All Rights Reserved.
* SPDX-License-Identifier: Apache 2.0
*/

import Foundation

final class SelectCountryPresenter {
    weak var view: SelectCountryViewProtocol?
    var wireframe: SelectCountryWireframeProtocol!
    var interactor: SelectCountryInteractorInputProtocol!

    var logger: LoggerProtocol?

    private(set) var countries: [Country] = []
    private(set) var matchingCountries: [Country] = []
    private(set) var query: String = ""

    private func update() {
        if !query.isEmpty {
            let lowercasedQuery = query.lowercased()
            matchingCountries = countries.filter { $0.name.lowercased().hasPrefix(lowercasedQuery) }
        } else {
            matchingCountries = countries
        }

        let titles = matchingCountries.map { $0.name }

        if !query.isEmpty, titles.count == 0 {
            view?.didReceive(state: .empty)
        } else {
            view?.didReceive(state: .data(viewModel: titles))
        }
    }
}

extension SelectCountryPresenter: SelectCountryPresenterProtocol {
    func setup() {
        interactor.setup()
    }

    func search(by query: String) {
        self.query = query.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        update()
    }

    func select(at index: Int) {
        wireframe.showNext(from: view, country: matchingCountries[index])
    }
}

extension SelectCountryPresenter: SelectCountryInteractorOutputProtocol {
    func didReceive(countries: [Country]) {
        self.countries = countries.sorted { $0.name < $1.name}
        update()
    }

    func didReceiveDataProvider(error: Error) {
        logger?.error("Unexpected country data provider error: \(error)")
    }
}
