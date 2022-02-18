//
//  ArticlesFeature.swift
//  Pragmatic Clean ArchitectureUITests
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation

import XCTest

class ArticlesFeature: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testDisplayListOfArticles() throws {
        let app = XCUIApplication()
        app.launch()
        sleep(5)
        XCTAssertTrue(app.staticTexts["Lorem Ipsum"].exists)
        XCTAssertTrue(app.staticTexts["dolor sit amet"].exists)
        XCTAssertTrue(app.staticTexts["Petros Efthymiou"].exists)
        XCTAssertTrue(app.staticTexts["Consectetur adipiscing elit"].exists)
        XCTAssertTrue(app.staticTexts["sed do eiusmod tempor"].exists)
        XCTAssertTrue(app.staticTexts["Nikos Voulgaris"].exists)
    }
}

