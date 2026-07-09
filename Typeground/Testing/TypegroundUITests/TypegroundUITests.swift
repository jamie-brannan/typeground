//
//  TypegroundUITests.swift
//  TypegroundUITests
//
//  Created by Jamie Brannan on 05/10/2025.
//

import XCTest

final class TypegroundUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunchShowsHomeContent() throws {
        let app = XCUIApplication()
        app.launch()

        XCTAssertTrue(app.staticTexts["Typeground"].waitForExistence(timeout: 5))
        XCTAssertTrue(app.staticTexts["Hello Bridge"].waitForExistence(timeout: 5))
    }
}
