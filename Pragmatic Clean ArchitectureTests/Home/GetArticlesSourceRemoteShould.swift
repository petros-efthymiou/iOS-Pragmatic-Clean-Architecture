//
//  GetArticlesSourceRemoteShould.swift
//  Pragmatic Clean ArchitectureTests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import XCTest
@testable import Pragmatic_Clean_Architecture
import Resolver
import RxBlocking
import RxSwift

class GetArticlesSourceRemoteShould: XCTestCase {
    
    var sut: GetArticlesSourceRemote?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = GetArticlesSourceRemote()
    }
    
    func testCombineArticleData() throws {
        let result = try sut!.articles().toBlocking().first()
        
        XCTAssertEqual(articlesData, result)
    }
}
