//
//  QuizView.swift
//  Quizilla
//
//  Created by Amanda Tana on 2026-03-27.
//

import SwiftUI


struct QuizView: View {
    
    // Placeholders for now, fetch from viewmodel later
    
    @Bindable var viewModel: QuizViewModel
    
    var body: some View {
        
        let question = viewModel.gameQuestions[viewModel.currentQuestionIndex]

        ZStack {
            
            
            VStack {
//                Text("\(score)")
//                    .fontWeight(.bold)
//                    .foregroundColor(Color.theme.text)
//                    .font(.system(size: 80))
//                    .shadow(color:Color.black, radius: 2, x: 4, y: 4)
                
                VStack(alignment: .center, spacing: 16) {
                        Text(question.title)
                        .modifier(CardModifier())
                        .multilineTextAlignment(.center)
                    
                    ProgressView(value: Double(viewModel.currentQuestionIndex + 1),
                                 total: Double(viewModel.gameQuestions.count))
                        .progressViewStyle(.linear)
                        .padding(.horizontal, 30)
                        .padding(.vertical)
                        .tint(Color.theme.buttonBorder)
                 
                        ForEach(question.options.indices, id: \.self) {index in
                            
                            Button {
                                viewModel.submitAnswer(index)
                            } label: {
                                Text(question.options[index])
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(
                                        Color.backgroundColor(
                                            index: index,
                                            correctAnswerIndex: question.correctAnswerIndex,
                                            selectedAnswerIndex: viewModel.selectedAnswerIndex)
                                    )
                            }
                            .modifier(ButtonModifier())
                            .disabled(viewModel.selectedAnswerIndex != nil)
                        }
                }
            }
            .padding(.vertical, 50)
        }
        .gradientBackground()
    }
 
    func backgroundColor(for index: Int) -> Color {
        let question = viewModel.gameQuestions[viewModel.currentQuestionIndex]
        
        if let selected = viewModel.selectedAnswerIndex {
            if index == question.correctAnswerIndex {
                return .green
            } else if index == selected {
                return .red
            }
        }
        return Color.theme.secondaryPurpleColor.opacity(0.15)
    }
}



