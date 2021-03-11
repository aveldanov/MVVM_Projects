//
//  Article.swift
//  IntoNewsApp
//
//  Created by Veldanov, Anton on 3/10/21.
//

import Foundation


struct Article: Decodable{
    let title: String?
    let description: String?
}


struct ArticleList: Decodable{
    
    let articles: [Article]
}



