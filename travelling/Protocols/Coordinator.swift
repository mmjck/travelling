//
//  Coordinator.swift
//  travelling
//
//  Created by Jackson Matheus on 05/01/24.
//


import UIKit


protocol Coordinator: AnyObject {
    var currentController: UIViewController? { get set }
    var navigationController: UINavigationController { get set }
    func start()
}
