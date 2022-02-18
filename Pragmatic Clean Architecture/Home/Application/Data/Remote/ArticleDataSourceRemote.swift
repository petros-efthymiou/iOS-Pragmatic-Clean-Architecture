//
//  ArticleDataSourceRemote.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import RxSwift

protocol ArticleDataSourceRemote {
    
    func fetchArticles()-> Observable<[ArticlePlain]>
    
    func likeArticle(id: String)
}
