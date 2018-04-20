//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    

    @IBOutlet weak var startOverButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    var bank = QuestionBank()
    var question = 0
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = bank.list[question].questionText
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(question+1)/13"
        startOverButton.isHidden = true
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        
        if sender.tag != 3 && question < 13{
            updateUI(checkAnswer(sender.tag))
            nextQuestion()
        }else if sender.tag == 3{
            startOver()
        }
    }
    
    func updateUI(_ result : Bool) {
        if result == true{
            score += 1
            scoreLabel.text = "Score: \(score)"
        }
    }
    

    func nextQuestion() {
        
        question += 1
        if question < 13{
            questionLabel.text = bank.list[question].questionText
            progressLabel.text = "\(question+1)/13"
            
        }else{
            startOverButton.isHidden = false
        }
        
    }
    
    
    func checkAnswer(_ answer : Int) -> Bool {
        
        var correct = true
        
        if answer == 2{
            correct = false
        } else if answer == 1{
            correct = true
        }
        
        if correct == bank.list[question].answer{
            return true
        }else{
            return false
        }
    }
    
    
    func startOver() {
        question = 0
        score = 0
        questionLabel.text = bank.list[question].questionText
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(question+1)/13"
        startOverButton.isHidden = true
    }
    

    
}
