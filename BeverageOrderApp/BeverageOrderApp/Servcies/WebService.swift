//
//  WebService.swift
//  BeverageOrderApp
//
//  Created by Veldanov, Anton on 12/20/20.
//

import Foundation

enum NetWorkError: Error{
    case decodingError
    case domainError
    case urlError
}

struct Resource<T: Codable>{
    let url: URL
}


class WebService {
    func load<T>(resource: Resource<T>, completion: @escaping (Result<T, NetWorkError>) -> Void){

        URLSession.shared.dataTask(with: resource.url) { data, response, error in

            guard let data = data, error == nil else{
                completion(.failure(.domainError))
                return
            }

            let result = try? JSONDecoder().decode(T.self, from: data)
            if let result = result{
                DispatchQueue.main.async {
                    completion(.success(result))
                }
                
            }else{
                completion(.failure(.decodingError))
            }
            
        }.resume()
        
    }
}
