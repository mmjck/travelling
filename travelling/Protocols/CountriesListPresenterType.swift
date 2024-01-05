//
//  CountriesListPresenterType.swift
//  travelling
//
//  Created by Jackson Matheus on 05/01/24.
//

import Foundation


protocol CountriesListPresenterType: AnyObject {
    var viewController: CountriesListViewControllerType? { get set }
    
    func requestContries()
    func handleSearch(with content: String)
    func numberOfRowsInSection() -> Int
    func countryName(of row: Int) -> String
    func countryURL(of row: Int) -> URL
}
