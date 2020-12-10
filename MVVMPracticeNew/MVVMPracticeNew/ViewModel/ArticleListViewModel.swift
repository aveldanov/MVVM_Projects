//
//  ArticleListViewModel.swift
//  MVVMPracticeNew
//
//  Created by Veldanov, Anton on 12/9/20.
//

import Foundation



struct ArticleViewModel{
    let article: Article
    init(_ article: Article) {
        self.article = article
    }
    
}

struct ArticleListViewModel{
    
    let articlesViewModel : [Article]
    
    var numberOfSections: Int{
        return 1
    }
    
    func numberOfRowPerSection()-> Int{
        return articlesViewModel.count
    }
    
    func rowAtIndex(_ index: Int)->ArticleViewModel{
        let article = articlesViewModel[index]
        return ArticleViewModel(article)
    }
    
    
    
}
