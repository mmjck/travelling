//
//  CountryInformationsViewControllerType.swift
//  travelling
//
//  Created by Jackson Matheus on 08/01/24.
//

import Foundation
protocol CountryInformationsViewControllerType where Self: UIViewController {
    func updateViewName(with name: String)
    func show(with state: State)
}
