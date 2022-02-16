//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var quizScore: UILabel!
    @IBOutlet weak var que: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    var quizBrain = QuizBrain()
    
    @objc func updateUI(){
        que.text = quizBrain.queText()
        answer1.backgroundColor = UIColor.clear
        answer2.backgroundColor = UIColor.clear
        answer3.backgroundColor = UIColor.clear
        answer1.setTitle(quizBrain.getAnswer1(), for: .normal)
        answer2.setTitle(quizBrain.getAnswer2(), for: .normal)
        answer3.setTitle(quizBrain.getAnswer3(), for: .normal)
        progressBar.progress = quizBrain.getProgress()
        quizScore.text = "Score:\(quizBrain.getScore())"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let isAnswerRight = quizBrain.checkAnswer(userAnswer)
        if isAnswerRight {
            sender.backgroundColor = UIColor.green}
        else{
            sender.backgroundColor = UIColor.red
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    
    quizBrain.nextQuestion()
    }
}

