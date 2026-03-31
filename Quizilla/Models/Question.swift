//
//  Question.swift
//  Quizilla
//
//  Created by Familjen on 2026-03-28.
//

import Foundation

struct Question: Identifiable {
    let id = UUID()
    let title: String
    let options: [String]
    let correctAnswerIndex: Int
}

