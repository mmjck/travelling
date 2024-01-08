//
//  CountryRepository.swift
//  travelling
//
//  Created by Jackson Matheus on 06/01/24.
//

import Foundation


final class CountryRepository: CountryRepositoryType {
    private let task: ServiceType
    
    init(dataTask: ServiceType = URLSession.shared) {
        self.task = dataTask
    }
    
    func getCountries(_ completion: @escaping (Result<[CountriesResponse], Error>) -> Void) {
        guard let url = URL(string: "https://travelbriefing.org/countries.json") else { return }
        
        
        let urlRequest = URLRequest(url: url)
        


        task.dataTask(with: urlRequest) { (data, _, error) in
            if let data = data {
                do {
                    let result = try JSONDecoder().decode([CountriesResponse].self, from: data)
                    
                    DispatchQueue.main.async {
                        print("was called")
                        completion(.success(result))
                    }
                    
                } catch let error {
                    
                    DispatchQueue.main.async {
                        completion(.failure(error))
                    }
                }
                
            }
        }.resume()
    }
    
    
    func getCountryInformations(url: URL, _ completion: @escaping (Result<CountryInformationsResponse, Error>) -> Void) {
        let urlRequest = URLRequest(url: url)
        
        
        task.dataTask(with: urlRequest) { (data, _, error) in
            if let data = data {
                do {
                    let result = try JSONDecoder().decode(CountryInformationsResponse.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(.success(result))
                    }
                    
                }catch let error {
                    DispatchQueue.main.async {
                        completion(.failure(error))
                    }
                }
                
            }
        }.resume()

    }
}


extension URLSession: ServiceType {
    func dataTask(with: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> DataTaskType {
        let task: URLSessionDataTask = self.dataTask(with: with, completionHandler: completionHandler)
        return task
    }
}


extension URLSessionDataTask: DataTaskType {}
