//
//  UITestTestUITests.swift
//  UITestTestUITests
//
//  Created by ALiSir_Mac on 17/6/1.
//  Copyright © 2017年 ALiSir_Mac. All rights reserved.
//

import XCTest

class UITestTestUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        app.otherElements.containing(.textField, identifier:"用户名").element.tap()
        app.buttons["登录"].tap()
        app.alerts["错误提示"].buttons["确定"].tap()
        
        let userText = app.textFields.element(at: 0)
        userText.tap()
        userText.typeText("123")
        
        let pwdText = app.textFields.element(at: 1)
        pwdText.tap()
        pwdText.typeText("123")
        
        app.buttons["登录"].tap()
        
        XCTAssertNotNil(app.textViews.element(at: 0))
        
    }
    
}
