//
//  GetArticlesUseCaseShould.swift
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

class GetArticlesUseCaseShould: XCTestCase {
    
    var sut: GetArticles?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = GetArticles()
    }
    
    func testEmitArticles() throws {
        let result = try sut!.articles().toBlocking().first()
        
        XCTAssertEqual(articles, result)
    }
}
