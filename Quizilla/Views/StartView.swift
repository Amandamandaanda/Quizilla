//
//  StartView.swift
//  Quizilla
//
//  Created by Amanda Tana on 2026-03-27.
//

import SwiftUI

struct StartView: View {
    @Binding var screen: showScreen
    
    var body: some View {
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                
                Text("Quizilla")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.purple.opacity(0.9))
                
                Text("Testa dina kunskaper!")
                    .font(.body)
                    .foregroundColor(.white.opacity(0.8))
                
                Button("Starta Quiz") {
                    //lägg till quiz
                }
                .buttonStyle(.borderedProminent)
                .tint(.white)
                .controlSize(.large)
                .foregroundColor(.purple)
                .padding()
            }
        }
    }
}
