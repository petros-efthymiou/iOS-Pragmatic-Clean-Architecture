//
//  GetArticlesSourceRemote.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import RxSwift
import Resolver

class GetArticlesSourceRemote : GetArticlesSource {
    
    @Injected var articleRemoteSource: ArticleDataSourceRemote
    @Injected var authorLocalSource: AuthorDataSourceLocal
    
    func articles() -> Observable<ArticlesAuthors> {
        let articlesSource = articleRemoteSource.fetchArticles()
        let authorsSource = authorLocalSource.findAuthors()
        
        return Observable.combineLatest(articlesSource, authorsSource).map {
            articles, authors in
            ArticlesAuthors(articlesPlain: articles, authorsPlain: authors)
        }
    }
}
