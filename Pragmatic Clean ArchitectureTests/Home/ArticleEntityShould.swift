//
//  ArticleEntityShould.swift
//  Pragmatic Clean ArchitectureTests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation
import XCTest
@testable import Pragmatic_Clean_Architecture

class ArticleEntityShould: XCTestCase {
        
    func testMapArticlesFromArticlesData() throws {
        let result = Article.mapArticlesFromData(data: articlesData)
        
        XCTAssertEqual(articles, result)
    }
}
