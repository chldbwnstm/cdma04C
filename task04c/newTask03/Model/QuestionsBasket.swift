//
//  QuestionsBasket.swift
//  newTask03
//
//  Created by Yoojoon Choi on 29/3/19.
//  Copyright © 2019 swinburne. All rights reserved.
//

import Foundation

class QuestionsBasket {
    var questionList = [Question]()
    
    init() {
        questionList.append(Question(question: "What is Onepiece?", buttonA: "1. Japanese Manga", buttonB: "2. Korean Manga", buttonC: "3. Marvel style cartoon", buttonD: "4. A dress", answer: 1))
        
        questionList.append(Question(question: "Who is the captain of the pirateship?", buttonA: "1. Sandi", buttonB: "2. Chopa", buttonC: "3. Loopy", buttonD: "4. Crocodile", answer: 3))
        
        questionList.append(Question(question: "Who gave Loopy's strawhat?", buttonA: "1. Titch", buttonB: "2. Nami", buttonC: "3. Gurf", buttonD: "4. Shanks", answer: 4))
        
        questionList.append(Question(question: "What is Gold.D.Roger famous for?", buttonA: "1. Chef", buttonB: "2. Pirate King", buttonC: "3. Loopy's son", buttonD: "4. Being rich", answer: 2))
        
        questionList.append(Question(question: "Which character has a horn?", buttonA: "1. Loopy", buttonB: "2. Zoro", buttonC: "3. Chopa", buttonD: "4. Nami", answer: 3))
    }
}
