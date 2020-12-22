//
//  ArticleViewModel.swift
//  StocksApp
//
//  Created by Veldanov, Anton on 12/22/20.
//

import Foundation

struct ArticleListViewModel{
    let articles: [Article]
}

// one single article
struct ArticleViewModel{
    private let article: Article
    
}





extension ArticleViewModel{
    init(_ article: Article) {
        self.article = article
    }
    
    var title: String?{
        return article.title
    }
    
    var description: String?{
        return article.description
    }
    
    
}



extension ArticleListViewModel{
    
    var numberOfSections: Int{
        return 1
    }
    
    func numberOfRowsInSection(_ section:Int)->Int{
        return articles.count
    }
    
    func articleAtIndex(_ index: Int)->ArticleViewModel{
        let article = articles[index]
        return ArticleViewModel(article)
    }
    
}
