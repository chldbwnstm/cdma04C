//
//  ViewController.swift
//  newTask03
//
//  Created by Yoojoon Choi on 25/3/19.
//  Copyright © 2019 swinburne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    //Buttons
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    let questionsBasket = QuestionsBasket()
    var questionNum:Int = 0
    var score: Int = 0
    var correctAnswer:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadQuestion()  // load the initial question
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func answerClicked(_ sender: UIButton) {
        if sender.tag == correctAnswer {
            print("correct")
            score += 1
        } else {
            print("wrong answer")
        }
        
        questionNum += 1
        if questionNum < questionsBasket.questionList.count {
            loadQuestion()
        } else {
            let alert = UIAlertController(title: "Alert", message: "Your score is \(score) please exit the app", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    func loadQuestion() {
        questionLabel.text = questionsBasket.questionList[questionNum].question
        buttonA.setTitle(questionsBasket.questionList[questionNum].buttonA, for:UIControl.State.normal)
        buttonB.setTitle(questionsBasket.questionList[questionNum].buttonB, for:UIControl.State.normal)
        buttonC.setTitle(questionsBasket.questionList[questionNum].buttonC, for:UIControl.State.normal)
        buttonD.setTitle(questionsBasket.questionList[questionNum].buttonD, for:UIControl.State.normal)
        correctAnswer = questionsBasket.questionList[questionNum].answer
        
    }
    
    

}

