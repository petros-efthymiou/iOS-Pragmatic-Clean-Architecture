//
//  Fakes.swift
//  Pragmatic Clean ArchitectureTests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
@testable import Pragmatic_Clean_Architecture

let article1 = Article(
    id: "id1",
    title: "title",
    desc: "desc",
    date: "01/01/2000",
    readTime: 1200 / 200,
    category: "sports",
    imageUrl: "imageUrl",
    likes: 455,
    authorName: "Petros Efthymiou",
    canLike: true,
    likeActionAlpha: 1
)

let article2 = Article(
    id: "id2",
    title: "title2",
    desc: "desc2",
    date: "02/01/2000",
    readTime: 1300 / 200,
    category: "music",
    imageUrl: "imageUrl2",
    likes: 555,
    authorName: "Nikos Voulgaris",
    canLike: false,
    likeActionAlpha: 0.2
)

let articlePlain1 = ArticlePlain(
    id: "id1",
    title: "title",
    desc: "desc",
    date: "01/01/2000",
    words: 1200,
    category: "sports",
    imageUrl: "imageUrl",
    likes: 455,
    canLike: true,
    authorId: "authorId1"
)

let articlePlain2 = ArticlePlain(
    id: "id2",
    title: "title2",
    desc: "desc2",
    date: "02/01/2000",
    words: 1300,
    category: "music",
    imageUrl: "imageUrl2",
    likes: 555,
    canLike: false,
    authorId: "authorId2"
)

let articles = [article1, article2]

let articlesPlain = [articlePlain1, articlePlain2]


let authorPlain1 = AuthorPlain(id: "authorId1", fullName: "Petros Efthymiou", rating: 5)

let authorPlain2 = AuthorPlain(id: "authorId2", fullName: "Nikos Voulgaris", rating: 5)

let authorPlain3 = AuthorPlain(
    id: "authorId3",
    fullName: "Christos Smpyrakos",
    rating: 5
)

let authorPlain4 = AuthorPlain(
    id: "authorId4",
    fullName: "Donny Wals",
    rating: 5
)

let authorsPlain = [authorPlain1, authorPlain2, authorPlain3, authorPlain4]

let articleRaw1 = ArticleRaw(id: "id1", title: "title", desc: "desc", date: "01/01/2000", words: 1200, category: "sports", imageUrl: "imageUrl", stars: 455, authorId: "authorId1", canStar: true, otherJunkTheBackendIsSending: nil)

let articleRaw2 = ArticleRaw(id: "id2", title: "title2", desc: "desc2", date: "02/01/2000", words: 1300, category: "music", imageUrl: "imageUrl2", stars: 555, authorId: "authorId2", canStar: false, otherJunkTheBackendIsSending: ["junk2"])

let articlesRaw = [articleRaw1, articleRaw2]

let articlesData = ArticlesAuthors(articlesPlain: articlesPlain, authorsPlain: authorsPlain)
