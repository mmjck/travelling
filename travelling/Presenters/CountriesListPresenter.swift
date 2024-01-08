//
//  CountriesListPresenter.swift
//  travelling
//
//  Created by Jackson Matheus on 06/01/24.
//

import Foundation
final class CountriesListPresenter: CountriesListPresenterType {
    weak var viewController: CountriesListViewControllerType?
    private var repository: CountryRepositoryType
    private(set) var filteredCountries: [ListedCountry] = []
    private var countries: [ListedCountry] = []


    init(repository: CountryRepositoryType = CountryRepository()) {
        self.repository = repository
    }
    
    func requestContries() {
        viewController?.show(with: .loading)
        repository.getCountries() {
            [weak self] result in
            switch result {
                case .success(let response):
                let countries = response.map {
                    ListedCountry(name: $0.name, url: $0.url)
                }
                self?.filteredCountries = countries
                self?.countries = countries
                self?.viewController?.show(with: .read)
                case .failure(_):
                self?.viewController?.show(with: .error)
            }
            
        }
    }
    
    func handleSearch(with content: String) {
        if content.isEmpty {
            filteredCountries = countries
        } else {
            filteredCountries = countries.filter {
                $0.name.uppercased().contains(content.uppercased())
            }
        }
    }
    
    func numberOfRowsInSection() -> Int {
        filteredCountries.count
    }
    
    func countryName(of row: Int) -> String {
        filteredCountries[row].name
    }
    
    func countryURL(of row: Int) -> URL {
        filteredCountries[row].url
    }
    
    
}
