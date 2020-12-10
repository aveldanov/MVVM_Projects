//
//  WebService.swift
//  MVVMPracticeNew
//
//  Created by Veldanov, Anton on 12/9/20.
//

import Foundation


class WebService {
    

    
    func getArticles(_ url: URL, completion: @escaping ([Article]?)->()){
//        print("BOOM")


        URLSession.shared.dataTask(with: url) { (data, response, error) in
            print("BOOM")
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                print(articleList)
                if let articleList = articleList{
                    completion(articleList.articles)
                }
            }
            
            
            
            
        }.resume()
        
        
    }
    
    
}
