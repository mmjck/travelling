//
//  CountryInformations.swift
//  travelling
//
//  Created by Jackson Matheus on 05/01/24.
//

import Foundation
struct CountryInformations: Decodable {
    var name: String = ""
    var abbreviation: String = ""
    
    var latitude: String = ""
    var longitude: String = ""
    var officialLanguage: [Language]? = nil
    var electricity: String? = nil
    var callingCode: String? = nil
    var police: String? = nil
    var ambulance: String? = nil
    var fire: String? = nil
    var vaccinations: [Vaccinations]? = nil
}

