//
//  CountryServiceType.swift
//  travelling
//
//  Created by Jackson Matheus on 06/01/24.
//

import Foundation
protocol CountryRepositoryType: AnyObject {
    func getCountries(_ completion: @escaping (Result<[CountriesResponse], Error>) -> Void)
    
    func getCountryInformations(url: URL, _ completion: @escaping (Result<CountryInformationsResponse, Error>) -> Void)
}
