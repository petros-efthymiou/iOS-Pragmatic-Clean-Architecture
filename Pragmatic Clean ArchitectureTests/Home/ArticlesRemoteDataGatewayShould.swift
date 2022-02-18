//
//  ArticlesRemoteDataGatewayShould.swift
//  Pragmatic Clean ArchitectureTests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import XCTest
@testable import Pragmatic_Clean_Architecture
import Resolver
import RxBlocking
import RxSwift

class ArticlesRemoteDataGatewayShould: XCTestCase {
    
    var sut: ArticleRemoteDataGateway?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = ArticleRemoteDataGateway()
    }
    
    func testmapAndEmitArticlesPlainFromService() throws {
        let result = try sut!.fetchArticles().toBlocking().first()
        
        XCTAssertEqual(articlesPlain, result)
    }
}
