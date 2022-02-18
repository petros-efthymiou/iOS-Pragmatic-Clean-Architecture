//
//  LikeArticle.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import Resolver

class LikeArticle {
    
    @Injected var source: LikeArticleSource

    func like(id: String) {
        source.likeArticle(id: id)
    }
}
