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
    @State private var screen: showScreen = .start
    
    var body: some View {
        
        switch screen {
        case .start:
            StartView(screen: $screen)
            
        case .quiz:
            QuizView(screen: $screen)
            
        case .result:
            ResultView(screen: $screen)
        }
    }
}

#Preview {
    ContentView()
}
