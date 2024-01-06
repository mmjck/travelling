//
//  ServiceType.swift
//  travelling
//
//  Created by Jackson Matheus on 06/01/24.
//

import Foundation


protocol ServiceType {
    func dataTask(with: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> DataTaskType
}


protocol DataTaskType {
    func resume()
}
