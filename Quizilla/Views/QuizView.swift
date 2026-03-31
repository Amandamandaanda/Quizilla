//
//  QuizView.swift
//  Quizilla
//
//  Created by Amanda Tana on 2026-03-27.
//

import SwiftUI


struct QuizView: View {
    
    // Placeholders for now, fetch from viewmodel later
    
    @Binding var screen: showScreen
    @Binding var currentQuestionIndex: Int
    @Binding var score: Int

    let questions: [Question]
    
    @State private var selectedAnswerIndex: Int? = nil

    
    var body: some View {
        
        let question = questions[currentQuestionIndex]

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
                    
                    ProgressView(value: Double(currentQuestionIndex + 1),
                                 total: Double(questions.count))
                        .progressViewStyle(.linear)
                        .padding(.horizontal, 30)
                        .padding(.vertical)
                        .tint(Color.theme.buttonBorder)
                 
                        ForEach(question.options.indices, id: \.self) {index in
                            
                            Button {
                                submitAnswer(index: index)
                            } label: {
                                Text(question.options[index])
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(backgroundColor(for: index))
                                    
                            }
                            .modifier(ButtonModifier())
                            .disabled(selectedAnswerIndex != nil)
                        }
                
                }

                
               
                
                
                
                
                
            }
            .padding(.vertical, 50)
            
           
            
        }
        .gradientBackground()
        
        
        
    }
    
    
    func submitAnswer(index: Int) {
        let question = questions[currentQuestionIndex]
        
        selectedAnswerIndex = index
        
        if index == question.correctAnswerIndex {
            score += 1
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            if currentQuestionIndex < questions.count - 1 {
                currentQuestionIndex += 1
            } else {
                screen = .result
            }
            
            selectedAnswerIndex = nil
        }
    }
    
    func backgroundColor(for index: Int) -> Color {
        let question = questions[currentQuestionIndex]
        
        if let selected = selectedAnswerIndex {
            if index == question.correctAnswerIndex {
                return .green
            } else if index == selected {
                return .red
            }
        }
        return Color.theme.secondaryPurpleColor.opacity(0.15)
    }
}



