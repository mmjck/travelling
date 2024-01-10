//
//  CountryInformationViewType.swift
//  travelling
//
//  Created by Jackson Matheus on 08/01/24.
//

import Foundation
import UIKit
protocol CountryInformationViewType where Self: UIView {
    func updateContent(state: State)
    var getTitle: ((Int) -> String)? { get set }
    var getDetail: ((Int) -> String)? { get set }
    var getLocation: (() -> CountryLocation)? { get set }
    func setupTableView()
}
