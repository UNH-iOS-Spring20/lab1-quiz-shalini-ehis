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
    //MARK:- Initializing variables
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet weak var NextQuestion: UIButton!
    @IBOutlet weak var showAnswer: UIButton!
   
    var currentQuestionIndex: Int = 0
    //MARK:- Questions Array
    let questions: [String] = [
        "A means of compressing images by blurring the boundaries between different colors while maintaining all brightness information",
        "What is cognac made from",
"A digital circuit capable of holding a single digit?"
    ]
  
    //MARK:- Answers array
    let answers: [String] = [
        "JPEG", "Grapes", "Flip-flop"]
    
   
    
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
        questionLabel.sizeToFit()
        //configureViewController()
    }
    
    //MARK:- constraints
//    func configureViewController(){
//        let stackView = UIStackView(arrangedSubviews: [questionLabel,NextQuestion,answerLabel,showAnswer])
//        stackView.axis = .vertical
//        stackView.spacing = 10
//        stackView.distribution = .fillEqually
//        view.addSubview(stackView)
//        stackView.anchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 50, paddingLeft: 50, paddingBottom: 50, paddingRight: 50, width: 0, height: 0)
  //  }
}
