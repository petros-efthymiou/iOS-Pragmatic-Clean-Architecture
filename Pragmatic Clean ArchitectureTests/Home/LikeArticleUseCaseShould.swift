//
//  LikeArticleUseCaseShould.swift
//  Pragmatic Clean ArchitectureTests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import XCTest
@testable import Pragmatic_Clean_Architecture
import Resolver
import RxBlocking
import RxSwift
import Mockingbird

class LikeArticleUseCaseShould: XCTestCase {
    
    var sut: LikeArticle?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = LikeArticle()
    }
    
    func testLikeArticle() throws {
        let service: ArticlesService = Resolver.resolve()
        
        sut?.like(id: article1.id)
        
        verify(service.likeArticle(id: article1.id)).wasCalled(1)
    }
}

