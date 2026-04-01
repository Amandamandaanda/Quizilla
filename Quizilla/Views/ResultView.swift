//
//  ResultView.swift
//  Quizilla
//
//  Created by Amanda Tana on 2026-03-27.
//

import SwiftUI



struct ResultView: View {
    @Bindable var viewModel: QuizViewModel
    
    var body: some View {
        ZStack{
            VStack(spacing: 20) {
                Image(systemName: viewModel.score > viewModel.gameQuestions.count / 2 ? "star.hexagon.fill" : "xmark.circle.fill")
                    .font(.system(size: 60))
                    .foregroundStyle(viewModel.score > viewModel.gameQuestions.count / 2 ? .green : .red)
                            Text("Resultat")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundStyle(Color.theme.text)
                
                if !viewModel.nickname.isEmpty {
                    Text(viewModel.score > viewModel.gameQuestions.count / 2 ? "Bra spelat \(viewModel.nickname)!" : "Du kan bättre \(viewModel.nickname)!")
                }
                
                

                Text("\(viewModel.score) av \(viewModel.gameQuestions.count) rätt")
                                .font(.title2)
                                .foregroundStyle(Color.theme.text)
                                .padding(.bottom, 60)

                            Button("Spela igen") {
                                viewModel.startNewGame()
                                
                            }
                            .modifier(ButtonModifier())
                Button("Tillbaka till start") {
                    viewModel.backToStart()
                    
                }
                .modifier(ButtonModifier())
                        }
                        .padding()
                    
        }
            .gradientBackground()
  
    }
}

