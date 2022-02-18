//
//  HomeViewModelShould.swift
//  Pragmatic Clean ArchitectureTests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import XCTest
@testable import Pragmatic_Clean_Architecture
import Resolver
import RxBlocking
import RxSwift
import Mockingbird

class HomeViewModelShould: XCTestCase {
    
    var sut: HomeViewModel?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = HomeViewModel()
    }
    
    func testEmitArticlesOnViewArticlesIntent() throws {
        sut?.handleIntent(intent: HomeIntent.ViewArticles)
        
        let result = sut!.state
        
        XCTAssertEqual(HomeState.success(articles: articles), result)
    }
    
    func testHandleLikeArticle() throws {
        let service: ArticlesService = Resolver.resolve()
        
        sut?.handleIntent(intent: HomeIntent.LikeArticle(id: article1.id))
        
        verify(service.likeArticle(id: article1.id)).wasCalled(1)
    }
}
