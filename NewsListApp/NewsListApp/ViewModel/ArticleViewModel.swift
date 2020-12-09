//
//  ArticleViewModel.swift
//  NewsListApp
//
//  Created by Veldanov, Anton on 12/8/20.
//

import Foundation

struct ArticleListViewModel{
    let articles: [Article]
}

extension ArticleListViewModel{
    var numberOfSections: Int{
        return 1
    }
    
    func numberOrRowsInSection(_ section:Int)->Int{
        return articles.count
    }
    
    func articleAtIndex(_ index:Int) -> ArticleViewModel{
        let article = articles[index]
        return ArticleViewModel(article)
    }
    
}




// one single article
struct ArticleViewModel{
    private let article: Article
    
}




extension ArticleViewModel{
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel{
    var title:String?{
        return article.title
    }
    var description:String?{
        return article.description
    }
    
}
