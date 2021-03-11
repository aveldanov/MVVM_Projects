//
//  ArticleViewModel.swift
//  IntoNewsApp
//
//  Created by Veldanov, Anton on 3/10/21.
//

import Foundation

// parent model - represents the whole screen


struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel{
    var numberOfSecions: Int{
        return 1
    }
    
    func numberOfRowsInSection(_ section:Int) -> Int{
        return articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel{
        let article = articles[index]
        return ArticleViewModel(article)
    }
    
}





// responsible to display just one article
struct ArticleViewModel{
    
    private let article: Article
    
}




// initilize article
extension ArticleViewModel{
    init(_ article: Article) {
        self.article = article
    }
}


// computed properties to return title
extension ArticleViewModel{
     var title: String?{
        return article.title
    }
    
    var description: String?{
        return article.description
    }
    
}
