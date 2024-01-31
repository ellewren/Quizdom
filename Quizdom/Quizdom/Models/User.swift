//
//  User.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 1/31/24.
//

import Foundation

struct User: Codable {
    let id: String
    let userName: String
    let email: String
    let birthDate: Date
    let joined: TimeInterval
}
