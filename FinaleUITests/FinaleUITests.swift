//
//  FinaleUITests.swift
//  FinaleUITests
//
//  Created by Umar on 1/4/16.
//  Copyright © 2016 Shazia Haroon. All rights reserved.
//

import XCTest


class FinaleUITests: XCTestCase {
        
    override func setUp() {
        XCUIApplication().terminate()
        super.setUp()

        // Put setup code here. This method is called before the invocation of each test method in the class.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        XCUIApplication().terminate()

    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        snapshot("0main", waitForLoadingIndicator: true)
        let currentGradeTextField = app.textFields["Current Grade:"]
        currentGradeTextField.tap()
        currentGradeTextField.typeText("95.4")
        
        let doneButton = app.toolbars.buttons["Done"]
        doneButton.tap()
        
        let weightTextField = app.textFields["Weight:"]
        weightTextField.tap()
        weightTextField.typeText("20")
        doneButton.tap()
        
        let desiredGradeTextField = app.textFields["Desired Grade:"]
        desiredGradeTextField.tap()
        desiredGradeTextField.typeText("90")
        doneButton.tap()
        snapshot("1filled", waitForLoadingIndicator: true)
        app.buttons["Calculate"].tap()
        snapshot("2calculate", waitForLoadingIndicator: true)
        app.buttons["Back"].tap()


    
        
        
        
    }
    
}
