//
//  ArticleRemoteDataGateway.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import Resolver
import RxSwift

class ArticleRemoteDataGateway : ArticleDataSourceRemote {

    @Injected var service: ArticlesService

    func fetchArticles() -> Observable<[ArticlePlain]> {
        return service.fetchArticles().map { articleRaw in
            ArticleRaw.mapArticlesRawToPlain(articlesRaw: articleRaw)
        }
    }

    func likeArticle(id: String) {
        service.likeArticle(id: id)
    }
}
