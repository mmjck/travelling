//
//  MapHeader.swift
//  travelling
//
//  Created by Jackson Matheus on 08/01/24.
//

import Foundation
import UIKit

final class MapHeader: UITableViewHeaderFooterView {
    static var id: String {
        return String(describing: self)
    }
    
    private lazy var mapView: MKMapView = {
        let mapView = MKMapView()
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        return mapView
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        buildViewHierarchy()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func buildViewHierarchy() {
        contentView.addSubview(mapView)
    }
    
    private func setupConstraints() {
        mapView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0).isActive = true
        mapView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0).isActive = true
        mapView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
        mapView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
    }
}
