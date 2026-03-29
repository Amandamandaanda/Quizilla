//
//  ResultView.swift
//  Quizilla
//
//  Created by Amanda Tana on 2026-03-27.
//

import SwiftUI



struct ResultView: View {
    let displayScore: Int
    let totalQuestions: Int
    
    @Binding var screen: showScreen
    @Binding var currentQuestionIndex: Int
    @Binding var score: Int
    
    var body: some View {
        ZStack{
            VStack(spacing: 20) {
                Image(systemName: displayScore > totalQuestions / 2 ? "checkmark.seal.fill" : "xmark.seal.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(displayScore > totalQuestions / 2 ? .purple : .red)
                Text("Resultat")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundStyle(Color.theme.text)

                            Text("\(displayScore) av \(totalQuestions) rätt")
                                .font(.title2)
                                .foregroundStyle(Color.theme.text)

                            Button("Spela igen") {
                                // Återställ quiz
                                currentQuestionIndex = 0
                                score = 0
                                
                                // Navigera tillbaka till StartView
                                screen = .start
                            }
                            .modifier(ButtonModifier())
                        
                        }
                        .padding()
                    
            
        }
            .gradientBackground()
  
    }
}

struct ResultPreview: View {
    @State var screen: showScreen = .result
    @State var currentQuestionIndex = 0
    @State var score = 2
    
    var body: some View {
        ResultView(
            displayScore: score,
            totalQuestions: 3,
            screen: $screen,
            currentQuestionIndex: $currentQuestionIndex,
            score: $score)
    }
}

#Preview {

        ResultPreview()
}
