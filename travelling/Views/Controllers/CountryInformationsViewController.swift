//
//  CountryInformationsViewController.swift
//  travelling
//
//  Created by Jackson Matheus on 08/01/24.
//

import Foundation
import UIKit

final class CountryInformationsViewController: UIViewController {
    private let contentView: CountryInformationViewType
    private let presenter: CountryInformationsPresenterType
    
    
    init(contentView: CountryInformationViewType = CountryInformationView(), presenter: CountryInformationsPresenterType) {
        self.contentView = contentView
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = contentView
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindViewActions()
        presenter.requestContryInformations()
    }
    
}
