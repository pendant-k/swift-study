//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    @IBOutlet var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        if quizBrain.checkAnswer(userAnswer) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        // array length -> array.count
        quizBrain.progress()
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    func updateUI() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
            // questionNumber 계산 과정, text 또한 quizBrain에서 처리하는 게 조금 더 바람직한 격리
            self.progressBar.progress = Float(self.quizBrain.questionNumber + 1) / Float(self.quizBrain.quiz.count)
            self.questionLabel.text = self.quizBrain.quiz[self.quizBrain.questionNumber].text
            self.trueButton.backgroundColor = UIColor.clear
            self.falseButton.backgroundColor = UIColor.clear
            self.scoreLabel.text = "Score : \(self.quizBrain.getScore())"
        }
    }
}
