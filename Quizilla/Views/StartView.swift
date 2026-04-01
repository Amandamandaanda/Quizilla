//
//  StartView.swift
//  Quizilla
//
//  Created by Amanda Tana on 2026-03-27.
//

import SwiftUI

struct StartView: View {
    @Bindable var viewModel: QuizViewModel
    
    var body: some View {
        ZStack {
            
            VStack(spacing: 20) {
                Image(systemName: "gamecontroller.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(Color.theme.text)
                
                Text("Quizilla")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.theme.text)
            

                    
                
                Text("Testa dina kunskaper!")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(Color.theme.text)
                    .padding(.bottom, 40)
                
                TextField("Do you want a nickname?", text: $viewModel.nickname)
                    .foregroundStyle(Color.theme.text)
                    .padding(30)
                
                Button("Starta Quiz") {
                    viewModel.startNewGame()
                }
                .modifier(ButtonModifier())
            }
        }
        .gradientBackground()
    }
}
