//
//  LikeArticleSourceRemote.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import Resolver

class LikeArticleSourceRemote : LikeArticleSource {

    @Injected var articleRemoteSource: ArticleDataSourceRemote

    func likeArticle(id: String) {
        articleRemoteSource.likeArticle(id: id)
    }
}
