//
//  newTask03Tests.swift
//  newTask03Tests
//
//  Created by Yoojoon Choi on 25/3/19.
//  Copyright © 2019 swinburne. All rights reserved.
//

import XCTest
@testable import newTask03

class newTask03Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAnswerClicked() {
        let testQuestion = Question(question: "What is Onepiece?", buttonA: "1. Japanese Manga", buttonB: "2. Korean Manga", buttonC: "3. Marvel style cartoon", buttonD: "4. A dress", answer: 1)
        
        // test when answer is correct
        var result = testQuestion.correctAnswer(chosenAnswer: 1)
        XCTAssertTrue(result, "Unexpected, returned false when it should return true")
        
        result = testQuestion.correctAnswer(chosenAnswer: 2)
        XCTAssertFalse(result, "Unexpected, returned true when it should return false")
        
        // test when answer is incorrect
    }

}
