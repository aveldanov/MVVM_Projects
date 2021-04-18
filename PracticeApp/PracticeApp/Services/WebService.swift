//
//  WebService.swift
//  PracticeApp
//
//  Created by Veldanov, Anton on 4/17/21.
//

import Foundation


struct WebService{
    
    
    func loadItems(url:URL, completion: @escaping ([Item]?)->() ){
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data{
                let itemsList = try? JSONDecoder().decode([Item].self, from: data)
                completion(itemsList)
            }else{
                print(error?.localizedDescription)
            }
            
        }.resume()
        
        
        
    }
    
}
