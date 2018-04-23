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
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    let myQuestionBank = QuestionBank()
    
    var alert : UIAlertController? = nil
    var restartAction : UIAlertAction? = nil
    var questionCounter : Int = 0
    var playerScore : Int = 0
    var playerAnswer : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startOver()
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        
        if sender.tag == 1{
            playerAnswer = true;
        }else if sender.tag == 2{
            playerAnswer = false;
        }
        
        checkAnswer(playerAnswer)
    }
    
    func updateUI() {
        questionLabel.text = myQuestionBank.list[questionCounter].questionText
        scoreLabel.text = "Score: \(playerScore)"
        progressLabel.text = "\(questionCounter+1)/13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionCounter+1)
    }
    

    func nextQuestion() {

        questionCounter += 1
        
        if questionCounter <= 12{
            updateUI()
        }else{
            
            alert = UIAlertController(title: "Quiz Complete", message: "Final Score: \(playerScore)", preferredStyle: .alert)
            restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            
            alert?.addAction(restartAction!)
            
            present(alert!, animated: true,completion: nil)
        }
    }
    
    
    func checkAnswer(_ answer : Bool){
        
        if answer == myQuestionBank.list[questionCounter].answer {
            playerScore += 10
            ProgressHUD.showSuccess("Correct")
        }else{
            ProgressHUD.showError("Wrong")
        }

        nextQuestion()
    }
    
    
    func startOver() {
        questionCounter = 0
        playerScore = 0
        updateUI()
    }
    

    
}
