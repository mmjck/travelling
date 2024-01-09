//
//  CountryInformationView.swift
//  travelling
//
//  Created by Jackson Matheus on 08/01/24.
//

import Foundation
import UIKit

final class CountryInformationView: UIView {
    var getTitle: ((Int) -> String)?
    var getDetail: ((Int) -> String)?
    var getLocation: (() -> CountryLocation)?
    
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: .zero)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    init(dataSourceDelegate: CountryInformationsDataSourceType = CountryInformationsDataSource()) {
        self.dataSourceDelegate = dataSourceDelegate
        super.init(frame: .zero)
        buildViewHierarchy()
        applyConstraints()
        backgroundColor = .systemBackground
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildViewHierarchy() {
        addSubview(tableView)
    }
    
    private func applyConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor)
        ])
    }
}
