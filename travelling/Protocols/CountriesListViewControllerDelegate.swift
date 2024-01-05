//
//  CountriesListViewControllerDelegate.swift
//  travelling
//
//  Created by Jackson Matheus on 05/01/24.
//

import Foundation


protocol CountriesListViewControllerDelegate: AnyObject {
    func goToInformations(with country: ListedCountry)
}
