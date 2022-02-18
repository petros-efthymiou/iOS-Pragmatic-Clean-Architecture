//
//  MockResolver.swift
//  Pragmatic Clean ArchitectureTests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
@testable import Pragmatic_Clean_Architecture
import Resolver
import RxBlocking
import Mockingbird
import RxSwift

extension Resolver {
    static var mocked = Resolver(child: .main)
    
    static func registerMockServices() {
        root = Resolver.mocked
        defaultScope = .application
        
        let articlesService = mock(ArticlesService.self)
        given(articlesService.fetchArticles()).willReturn(Observable.just(articlesRaw))
        
        Resolver.mocked.register { articlesService }.implements(ArticlesService.self)
    }
}

