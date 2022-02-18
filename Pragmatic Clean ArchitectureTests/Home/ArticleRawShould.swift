//
//  ArticleRawShould.swift
//  Pragmatic Clean ArchitectureTests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import XCTest
@testable import Pragmatic_Clean_Architecture

class ArticleRawShould: XCTestCase {
        
    func testMapArticlesRawToPlain() throws {
        let result = ArticleRaw.mapArticlesRawToPlain(articlesRaw: articlesRaw)
        
        XCTAssertEqual(articlesPlain, result)
    }
}

