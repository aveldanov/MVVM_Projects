//
//  WebServices.swift
//  NewsListApp
//
//  Created by Veldanov, Anton on 12/8/20.
//

import Foundation

class WebService{
    
    func getArticles(url: URL, completion: @escaping([Article]?)->()){
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in

            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
//                if let articleList = articleList{
//                    completion(articleList.articles)
//                }
                
                
                print(articleList)
            }
            
            
        }.resume()
        
    }
    
}
