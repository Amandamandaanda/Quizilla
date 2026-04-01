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

    @State private var viewModel = QuizViewModel()
    
    var body: some View {

        switch viewModel.screen {

        case .start:
            StartView(viewModel: viewModel)
                
        case .quiz:
           QuizView(viewModel: viewModel)

        case .result:
            ResultView(viewModel: viewModel)
        }
    }
}

#Preview {
    ContentView()
}
