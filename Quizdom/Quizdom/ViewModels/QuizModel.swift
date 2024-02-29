//
//  QuizModel.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/31/24.
//

import Foundation

struct Questions: Decodable {
    let question: String
    let correctAnswer: String
    let incorrectAnswers: [String]

    enum CodingKeys: String, CodingKey {
        case question = "question"
        case correctAnswer = "correct_answer"
        case incorrectAnswers = "incorrect_answers"
    }
}


struct QuizResponse: Decodable {
    let results: [Questions]
}




