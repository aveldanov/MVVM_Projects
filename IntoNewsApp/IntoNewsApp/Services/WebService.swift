//
//  WebServices.swift
//  IntoNewsApp
//
//  Created by Veldanov, Anton on 3/10/21.
//

import Foundation


class WebService {
    func getArticles(url: URL, completion: ([Any])->()){
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error{
                print(error.localizedDescription)
//                completion(nil)
            } else{
                if let data = data{
                    
                    print(data)
                }
            }
        }
    }
}