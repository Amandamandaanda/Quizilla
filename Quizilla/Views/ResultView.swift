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
                Image(systemName: displayScore > totalQuestions / 2 ? "star.hexagon.fill" : "xmark.circle.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(displayScore > totalQuestions / 2 ? .green : .red)
                            Text("Resultat")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundStyle(Color.theme.text)

                            Text("\(displayScore) av \(totalQuestions) rätt")
                                .font(.title2)
                                .foregroundStyle(Color.theme.text)
                                .padding(.bottom, 60)

                            Button("Spela igen") {
                                //återställer quiz
                                currentQuestionIndex = 0
                                score = 0
                                
                                //tillbaka till stsart
                                screen = .start
                            }
                            .modifier(ButtonModifier())
                        
                        }
                        .padding()
                    
        }
            .gradientBackground()
  
    }
}

