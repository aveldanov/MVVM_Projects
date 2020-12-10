//
//  WebServices.swift
//  MVVMPractice
//
//  Created by Veldanov, Anton on 12/9/20.
//

import Foundation



class WebServices{
    let urlString = "https://newsapi.org/v2/top-headlines?country=us&apiKey=9aff2ae2edb14019be1df1fe522dee01"
    
    func getArticles(completion:@escaping ([Article]?)->()){
        let url = URL(string: urlString)!
        URLSession.shared.dataTask(with: url) { data, response, error in
            print("BOOM")

            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList{
                    completion(articleList.articles)
                }
                
            }
            
            
            
        }.resume()
        
    }
    
    
    
}
