//
//  TypegroundTests.swift
//  TypegroundTests
//
//  Created by Jamie Brannan on 05/10/2025.
//

import XCTest
@testable import Typeground

final class TypegroundTests: XCTestCase {

    func testContentViewCanBeCreated() throws {
        let view = ContentView()

        XCTAssertNotNil(view.body)
    }

    func testSecondaryViewsCanBeCreated() throws {
        let settingsView = SettingsView()
        let infoView = InfoView()

        XCTAssertNotNil(settingsView.body)
        XCTAssertNotNil(infoView.body)
    }

}
