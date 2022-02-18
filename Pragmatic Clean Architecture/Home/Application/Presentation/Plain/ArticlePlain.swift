//
//  ArticlePlain.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation

struct ArticlePlain: Equatable {
    let id: String
    let title: String
    let desc: String
    let date: String
    let words: Int
    let category: String
    let imageUrl: String
    let likes: Int
    let canLike: Bool
    let authorId: String
}
