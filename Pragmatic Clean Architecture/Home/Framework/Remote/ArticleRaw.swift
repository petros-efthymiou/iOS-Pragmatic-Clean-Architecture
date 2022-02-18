//
//  ArticleRaw.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation

struct ArticleRaw: Decodable, Equatable {
    
    let id: String
    let title: String
    let desc: String
    let date: String
    let words: Int
    let category: String
    let imageUrl: String
    let stars: Int
    let authorId: String
    let canStar: Bool
    let otherJunkTheBackendIsSending: [String]?
    
    func mapToPlain() -> ArticlePlain {
        return ArticlePlain(
            id: self.id,
            title: self.title,
            desc: self.desc,
            date: self.date,
            words: self.words,
            category: self.category,
            imageUrl: self.imageUrl,
            likes: self.stars,
            canLike: self.canStar,
            authorId: self.authorId
        )
    }
    
    static func mapArticlesRawToPlain(articlesRaw: [ArticleRaw]) -> [ArticlePlain] {
        return articlesRaw.map { article in
            article.mapToPlain()
        }
    }
}
