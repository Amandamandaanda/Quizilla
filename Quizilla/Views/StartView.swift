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
            
            VStack(spacing: 20) {
                Image(systemName: "brain.head.profile")
                    .font(.system(size: 70))
                    .foregroundStyle(Color.theme.text)
                
                Text("Quizilla")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.theme.text)
                    
                
                Text("Testa dina kunskaper!")
                    .font(.body)
                    .foregroundStyle(Color.theme.text)
                
                Button("Starta Quiz") {
                    //lägg till quiz
                }
                .modifier(ButtonModifier())
                
        
            }
        }
        .gradientBackground()
        
    }
}

#Preview {
    StartView(screen: .constant(.start))
}
