//
//  Article.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation

struct Article: Identifiable, Equatable {
    
    let id: String
    let title: String
    let desc: String
    let date: String
    let readTime: Int
    let category: String
    let imageUrl: String
    let likes: Int
    let authorName: String
    let canLike: Bool
    let likeActionAlpha: Double
    
    static func mapArticlesFromData(data: ArticlesAuthors) -> [Article] {
        return data.articlesPlain.map { article in
            mapArticle(plain: article, authors: data.authorsPlain)
        }
    }
    
    private static func mapArticle(plain: ArticlePlain, authors: [AuthorPlain]) -> Article {
        return Article(
            id: plain.id,
            title: plain.title,
            desc: plain.desc,
            date: plain.date,
            readTime: mapReadTime(words: plain.words),
            category: plain.category,
            imageUrl: plain.imageUrl,
            likes: plain.likes,
            authorName: mapAuthorName(authorId: plain.authorId, authors: authors),
            canLike: plain.canLike,
            likeActionAlpha: mapLikeAlhpa(canLike: plain.canLike))
    }
    
    private static func mapReadTime(words: Int) -> Int {
        return words / 200
    }
    
    private static func mapAuthorName(authorId: String, authors: [AuthorPlain]) -> String {
        return authors.first { author in author.id == authorId }?.fullName ?? "-"
    }
    
    private static func mapLikeAlhpa(canLike: Bool) -> Double {
        if(canLike) {
            return 1
        } else {
            return 0.2
        }
    }
}
