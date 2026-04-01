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

    let questions = quizQuestions  // Hämtar frågorna från QuizData

    @State private var gameQuestions: [Question] = []

//    @State private var viewModel = QuizViewModel()
    
    var body: some View {

//        switch viewModel.screen {
        switch screen {
        case .start:
            StartView(screen: $screen,
                startGame: startNewGame)
            
//            StartView(startGame: viewModel.startNewGame)
                
        case .quiz:
            QuizView(
                screen: $screen,
                currentQuestionIndex: $currentQuestionIndex,
                score: $score,
                questions: gameQuestions
            )
//            QuizView(viewModel: viewModel)

        case .result:
            ResultView(
                displayScore: score,

                totalQuestions: gameQuestions.count,
                screen: $screen,
                currentQuestionIndex: $currentQuestionIndex,
                score: $score
            )
//            ResultView(
//                displayScore: viewModel.score, totalQuestions: viewModel.gameQuestions.count, backToStart: viewModel.backToStart
//            )
        }
    }

    // Slumpar 5 frågor från huvud-arrayen
    func startNewGame() {
        score = 0
        currentQuestionIndex = 0
        gameQuestions = Array(quizQuestions.shuffled().prefix(5))
    }

}

#Preview {
    ContentView()
}
