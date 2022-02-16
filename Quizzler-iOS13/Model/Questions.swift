//
//  Questions.swift
//  Quizzler-iOS13
//
//  Created by Santhosh Kumar on 28/11/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation
struct Question{
    let text: String
    let answer1: String
    let answer2: String
    let answer3: String
    let correctAnswer: String
    init(q: String, a: Array<String>, correctAnswer: String) {
        text = q
        answer1 = a[0]
        answer2 = a[1]
        answer3 = a[2]
        self.correctAnswer = correctAnswer
    }
}
