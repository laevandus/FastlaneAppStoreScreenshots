//
//  AppStoreScreenshotUITests.swift
//  FastlaneAppStoreScreenshotsUITests
//
//  Created by Toomas Vahter on 11.04.2020.
//  Copyright © 2020 Augmented Code. All rights reserved.
//

import XCTest

final class AppStoreScreenshotUITests: XCTestCase {
    private var app: XCUIApplication!
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        // Example of passing in launch arguments which can be read in the app
        // by calling CommandLine.arguments.contains("--uitesting")
        // app.launchArguments.append("--uitesting")
        setupSnapshot(app)
        app.launch()
    }

    override func tearDownWithError() throws {
        app = nil
    }

    func testScreenshot1() throws {
        snapshot("1-mainview")
    }
    
    func testScreenshot2() throws {
        XCTAssertTrue(app.buttons["Button1"].waitForExistence(timeout: 10))
        app.buttons["Button1"].tap()
        snapshot("2-sheet1")
    }
    
    func testScreenshot3() throws {
        XCTAssertTrue(app.buttons["Button2"].waitForExistence(timeout: 10))
        app.buttons["Button2"].tap()
        snapshot("3-sheet2")
    }
}
