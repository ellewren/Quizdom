//
//  Grades.swift
//  Quizdom
//
//  Created by LaKeisha Wren on 2/7/24.
//

import Foundation

struct ChartData: Identifiable, Equatable {
    let type: String
    let count: Int

    var id: String { return type }
}
