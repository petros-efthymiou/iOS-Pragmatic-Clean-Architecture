//
//  HomeStateHandlerShould.swift
//  Pragmatic Clean ArchitectureTests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import XCTest
@testable import Pragmatic_Clean_Architecture

class HomeStateMapperShould: XCTestCase {
    
    var sut = HomeStateMapper()
    
    func testMapSuccessfulState() throws {
        let result = sut.map(articles: articles)
            
        XCTAssertEqual(HomeState.success(articles: articles), result)
    }
    
    func testMapEmptyStateWhenEmptyArray() throws {
        let result = sut.map(articles: [])
            
        XCTAssertEqual(HomeState.empty, result)
    }
}

