//
//  ArticleViewModel.swift
//  MVVMPractice
//
//  Created by Veldanov, Anton on 12/9/20.
//

import Foundation

struct ArticleListViewModel{
    
    let articles: [Article]
    
    var numberOfSections: Int{
        return 1
    }
    var numberOfRowInSection: Int{
        return articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel{
        
        return ArticleViewModel(articles[index])
    }
    
}

struct ArticleViewModel{
    let article: Article
    init(_ article:Article) {
        self.article = article
    }
    
    
    var title:String?{
        return article.title
    }
    var description:String?{
        return article.description
    }
    
}
