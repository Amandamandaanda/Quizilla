//
//  ContentView.swift
//  Quizilla
//
//  Created by Amanda Tana on 2026-03-27.
//

import SwiftUI

enum showScreen {
    case start
    case quiz
    case result
    
}

struct ContentView: View {
    @State private var score: Int = 0
    @State private var currentQuestionIndex: Int = 0
    @State private var screen: showScreen = .start
    
    var body: some View {
        
        switch screen {
        case .start:
            StartView(screen: $screen)
            
        case .quiz:
            QuizView(screen: $screen,
            currentQuestionIndex: $currentQuestionIndex,
            score: $score)
            
        case .result:
            ResultView(
            displayScore: score,
            
            //hårdkordat 3 frågor, kan göras dynamiskt
            totalQuestions: 3,
            screen: $screen,
            currentQuestionIndex: $currentQuestionIndex,
            score: $score)
        }
    }
}
