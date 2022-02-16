//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Santhosh Kumar on 28/11/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//
import UIKit
import Foundation
struct QuizBrain{
    
    
    
    let quiz = [ Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                 Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                 Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                 Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                 Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                 Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                 Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                 Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                 Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                 Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
]
    
    var queNo = 0
    var qScore = 0
    var answer1 = ""
    var answer2 = ""
    var answer3 = ""
    mutating func checkAnswer(_ userAnswer: String) -> Bool
    {
        if userAnswer == quiz[queNo].correctAnswer{
            qScore+=1
            return true
        }else{
            return false
        }
    }
    func queText() -> String{
        return quiz[queNo].text
        
    }
    
    func getProgress() -> Float{
        return Float(queNo+1)/Float(quiz.count)
    }
    mutating func nextQuestion(){
        
        
        if queNo < quiz.count{
            //print(queNo)
            queNo+=1
        }
        if queNo == quiz.count{
            //print(queNo)
            queNo = 0
            qScore = 0
        }
    }
    mutating func getScore() -> Int{
       return qScore
    }
    mutating func getAnswer1() -> String{
        return quiz[queNo].answer1
        
    }
    mutating func getAnswer2() -> String{
        return quiz[queNo].answer2
        
    }
    mutating func getAnswer3() -> String{
        return quiz[queNo].answer3
        
    }
}


