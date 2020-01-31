//
//  ViewController.swift
//  lab1_quiz
//
//  Created by Ekore, Ehiremen Alex on 1/30/20.
//  Copyright © 2020 Ekore, Ehiremen Alex. All rights reserved.
//

import UIKit
import os

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions: [String] = [
        "What is 7+7",
        "What is cognac made from",
        "What is the capital of India?"
    ]
    
    let answers: [String] = [
        "14", "Grapes", "Delhi"]
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_sender: UIButton){
        os_log("showing next question")
        currentQuestionIndex += 1
        
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        questionLabel.text = questions[currentQuestionIndex]
    }
    @IBAction func showAnswer(_sender: UIButton){
        os_log("showing answer")
        answerLabel.text = answers[currentQuestionIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I just loaded")
        questionLabel.text = "i am a question"
        answerLabel.text = "i'm an answer"
    }
}
