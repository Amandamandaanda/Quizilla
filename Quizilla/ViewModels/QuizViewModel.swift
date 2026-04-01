//
//  QuizViewModel.swift
//  Quizilla
//
//  Created by Familjen on 2026-03-29.
//

import Foundation

@Observable
class QuizViewModel {
    
    var score = 0
    var currentQuestionIndex = 0
    var screen: showScreen = .start
    
    var selectedAnswerIndex: Int? = nil
    
    private let allQuestions = quizQuestions
    var gameQuestions: [Question] = []
    
    func startNewGame() {
        
        score = 0
        currentQuestionIndex = 0
        gameQuestions = Array(allQuestions.shuffled().prefix(5))
        screen = .quiz
    }
    
    func backToStart() {
        screen = .start
    }
    
    func submitAnswer(_ index: Int) {
        
        let question = gameQuestions[currentQuestionIndex]
        
        if index == question.correctAnswerIndex {
            score += 1
        }
        
        if currentQuestionIndex < gameQuestions.count - 1 {
            currentQuestionIndex += 1
        } else {
            screen = .result
        }
        
    }

    
}
