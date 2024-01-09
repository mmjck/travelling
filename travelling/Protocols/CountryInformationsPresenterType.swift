//
//  CountryInformationsPresenterType.swift
//  travelling
//
//  Created by Jackson Matheus on 08/01/24.
//

import Foundation

protocol CountryInformationsPresenterType: AnyObject {
    var viewController: CountryInformationsViewControllerType? { get set }
    func requestContryInformations()
    func title(of row: Int) -> String
    func subtitle(of row: Int) -> String
    func location() -> CountryLocation
}
