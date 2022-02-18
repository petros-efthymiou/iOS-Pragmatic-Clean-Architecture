//
//  GetArticles.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import RxSwift
import Resolver

class GetArticles {
    
    @Injected var source: GetArticlesSource
    
    func articles() -> Observable<[Article]> {
        
        return source.articles().map { articlesAuthorsLikes in
            Article.mapArticlesFromData(data: articlesAuthorsLikes)
        }
    }
}
