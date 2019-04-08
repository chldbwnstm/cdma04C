//
//  questions.swift
//  newTask03
//
//  Created by Yoojoon Choi on 25/3/19.
//  Copyright © 2019 swinburne. All rights reserved.
//

import Foundation

class Question {
    let question: String
    let buttonA,buttonB,buttonC,buttonD: String
    let answer: Int
    
    init(question:String, buttonA:String, buttonB:String, buttonC:String, buttonD:String, answer:Int) {
        self.question = question
        self.buttonA = buttonA
        self.buttonB = buttonB
        self.buttonC = buttonC
        self.buttonD = buttonD
        self.answer = answer
    }
    
    func correctAnswer(chosenAnswer: Int) -> Bool {
        var result = false
        
        if chosenAnswer == answer {
            result = true;
        }
        
        return result;
    }
}
