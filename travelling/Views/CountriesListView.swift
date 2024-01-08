//
//  CountriesListView.swift
//  travelling
//
//  Created by Jackson Matheus on 06/01/24.
//

import Foundation
import UIKit

final class CountriesListView: UIView {
    var numberOfRowsInSectionAction: (() -> Int)?
    var didSelectRowAtAction: ((ListedCountry) -> Void)?
    var getCountryURL: ((Int) -> URL)?
    var getCountryName: ((Int) -> String)?
    
    private var dataSourceDelegate: CountriesListDataSourceType
    
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    init(dataSourceDelegate: CountriesListDataSourceType = CountriesListDataSource()){
        self.dataSourceDelegate = dataSourceDelegate
        super.init(frame: .zero)
        
        buildViewHierarchy()
        applyConstraints()
        
        backgroundColor = .systemBackground

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func buildViewHierarchy(){
        addSubview(tableView)
    }
    
    private func applyConstraints(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor)
        ])
    }
    
}


extension CountriesListView: CountriesListViewType {
    func updateContent(state: State) {
        switch state {
        case .error:
            self.tableView.isHidden = true
        case .loading:
            self.tableView.isHidden = true
        case .read:
            self.tableView.isHidden = false
            self.tableView.reloadData()
        }
    }
    
    func setupTableView() {
        dataSourceDelegate.numberOfRowsInSectionAction = numberOfRowsInSectionAction
        dataSourceDelegate.didSelectRowAtAction = didSelectRowAtAction
        dataSourceDelegate.numberOfRowsInSectionAction = numberOfRowsInSectionAction
        dataSourceDelegate.didSelectRowAtAction = didSelectRowAtAction
        dataSourceDelegate.getCountryName = getCountryName
        dataSourceDelegate.getCountryURL = getCountryURL
        tableView.delegate = dataSourceDelegate
        tableView.dataSource = dataSourceDelegate
        tableView.register(CountryCell.self, forCellReuseIdentifier: CountryCell.id)
    }
    
    
}
