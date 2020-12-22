//
//  WebService.swift
//  StocksApp
//
//  Created by Veldanov, Anton on 12/22/20.
//

import Foundation



class WebService{
    
   
    
    func getArticles(url: URL, completion:@escaping ([Any]?)->()){
        let session = URLSession.shared
        let task = session.dataTask(with: url) { (data, response, error) in
            print("BOOM")
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                print(data)
                
                
            }
            
            
        }
        
        
        
    }

    
    

    
    
    
    
    
}





