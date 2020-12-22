//
//  Article.swift
//  StocksApp
//
//  Created by Veldanov, Anton on 12/22/20.
//

import Foundation


struct ArticleList: Decodable{
    let articles: [Article]
}

struct Article: Decodable{
    let title: String?
    let description:String?
    
}
