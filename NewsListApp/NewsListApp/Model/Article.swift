//
//  Article.swift
//  NewsListApp
//
//  Created by Veldanov, Anton on 12/8/20.
//

import Foundation

struct ArticleList: Decodable{
    let articles: [Article]
}


struct Article: Decodable {
    let title: String
    let description: String    
}



