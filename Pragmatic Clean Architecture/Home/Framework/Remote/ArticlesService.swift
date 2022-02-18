//
//  ArticlesService.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import RxSwift

protocol ArticlesService {
    
    func fetchArticles() -> Observable<[ArticleRaw]>
    
    func likeArticle(id: String)
}
