//
//  Errors.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/31/24.
//

//Please look at these follow codes: https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
import Foundation

enum QuizError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
