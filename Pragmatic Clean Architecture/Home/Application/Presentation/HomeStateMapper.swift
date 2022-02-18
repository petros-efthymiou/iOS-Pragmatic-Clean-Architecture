//
//  HomeStateMapper.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import Resolver

class HomeStateMapper {
    
    func map(articles: [Article]) -> HomeState {
        if (articles.isEmpty) {
            return HomeState.empty
        } else {
            return HomeState.success(articles: articles)
        }
    }
}
