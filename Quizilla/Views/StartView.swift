//
//  StartView.swift
//  Quizilla
//
//  Created by Amanda Tana on 2026-03-27.
//

import SwiftUI

struct StartView: View {
    @Bindable var viewModel: QuizViewModel
    let questionOptions = [5, 10, 15]
    
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

                VStack {
                    Text("Välj antal frågor")
                    Picker("Antal:", selection: $viewModel.selectedAmount) {
                        ForEach(questionOptions, id: \.self) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.segmented)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 6)

                TextField(
                    "Vill du ha ett smeknamn?",
                    text: $viewModel.nickname,
                )
                .padding(12)
                .background(
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.theme.secondaryPurpleColor)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.theme.buttonBorder, lineWidth: 1)
                )
                .padding(.horizontal, 30)
                .padding(.vertical, 6)
                .foregroundStyle(Color.theme.text)

                Button("Starta Quiz") {
                    viewModel.startNewGame()
                }
                .modifier(ButtonModifier())
            }
        }
        .gradientBackground()
    }
}
