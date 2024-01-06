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


    init(repository: CountryRepositoryType = CountryRepository()) {
        self.repository = repository
    }
    
    func requestContries() {
        viewController?.show(with: .loading)
        repository.getCountries() {
            [weak self] result in
            switch result {
            case .success(let response):
                
            case .failure(_):
                self?.viewController?.show(with: .error)
            }
            
        }
    }
    
    func handleSearch(with content: String) {
        <#code#>
    }
    
    func numberOfRowsInSection() -> Int {
        <#code#>
    }
    
    func countryName(of row: Int) -> String {
        <#code#>
    }
    
    func countryURL(of row: Int) -> URL {
        <#code#>
    }
    
    
}
