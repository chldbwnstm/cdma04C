//
//  newTask03UITests.swift
//  newTask03UITests
//
//  Created by Yoojoon Choi on 25/3/19.
//  Copyright © 2019 swinburne. All rights reserved.
//

import XCTest

class newTask03UITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFirstSegue() {
        let app = XCUIApplication()
        app.buttons["1. Japanese Manga"].tap()
        let secondPageLabel = app.staticTexts["QuestionLabel"].label
        //let result = secondPageLabel == "Who is the captain of the pirateship?"
        XCTAssertEqual(secondPageLabel, "Who is the captain of the pirateship?")
    }
    
    func testShowScore() {
        let app = XCUIApplication()
        app.buttons["1. Japanese Manga"].tap()
        app.buttons["3. Loopy"].tap()
        app.buttons["4. Shanks"].tap()
        app.buttons["2. Pirate King"].tap()
        app.buttons["3. Chopa"].tap()
        let result = app.alerts["Alert"].exists
        XCTAssertTrue(result, "Something is wrong, alert message not showing after quiz end")
    }

    func testQuizApp() {
        
        let app = XCUIApplication()
        app.buttons["1. Japanese Manga"].tap()
        app.buttons["3. Loopy"].tap()
        app.buttons["4. Shanks"].tap()
        app.buttons["2. Pirate King"].tap()
        app.buttons["3. Chopa"].tap()
        app.alerts["Alert"].buttons["Click"].tap()
        
    }

}
