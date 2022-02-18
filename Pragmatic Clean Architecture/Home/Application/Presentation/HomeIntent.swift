//
//  HomeIntent.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation

enum HomeIntent {
    case ViewArticles
    case LikeArticle(id: String)
}
