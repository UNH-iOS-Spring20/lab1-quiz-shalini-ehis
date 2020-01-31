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
    
    @IBAction func showNextQuestion(_sender: UIButton){
        os_log("showing next question")
    }
    @IBAction func showAnswer(_sender: UIButton){
        os_log("showing answer")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("I just loaded")
        questionLabel.text = "i am a question"
        answerLabel.text = "i'm an answer"
    }
}
