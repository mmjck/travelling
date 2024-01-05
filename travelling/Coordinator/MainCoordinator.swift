//
//  MainCoordinator.swift
//  travelling
//
//  Created by Jackson Matheus on 05/01/24.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    
    weak var currentcontroller: UIViewController?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = CountriesListViewController()
        
        viewController.delegate = self
        currentcontroller = viewController
        navigationController.pushViewController(viewController , animated: true)
    }
}


extension MainCoordinator: CountriesListViewControllerDelegate {
    func goToInformations(with country: ListedCountry) {
        let presenter = CountryInformationsPresenter(country: country)
        let viewController = CountryInformationsViewController(presenter: presenter)
        presenter.viewController = viewController
        currentController = viewController
        navigationController.pushViewController(viewController, animated: true)
    }
}

