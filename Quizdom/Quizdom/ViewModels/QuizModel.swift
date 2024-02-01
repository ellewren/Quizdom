//
//  QuizModel.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/31/24.
//

import Foundation

struct Quiz: Decodable {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
}

struct QuizResponse: Decodable {
    let request: Quiz
}
