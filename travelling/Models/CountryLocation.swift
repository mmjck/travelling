//
//  CountryLocation.swift
//  travelling
//
//  Created by Jackson Matheus on 05/01/24.
//

import Foundation
import MapKit


class CountryLocation: NSObject, MKAnnotation  {
    var coordinate: CLLocationCoordinate2D
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}

extension CLLocationCoordinate2D: Equatable {
    public static func == (lhs: CLLocationCoordinate2D, rhs: CLLocationCoordinate2D) -> Bool {
       return lhs.longitude == rhs.longitude &&
        lhs.latitude == rhs.latitude
        
    }
}
