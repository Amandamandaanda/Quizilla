//
//  ButtonModifier.swift
//  Quizilla
//
//  Created by Familjen on 2026-03-29.
//


import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
      
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(Color.theme.buttonTextColor)
            .frame(width: 352, height: 50)
            
            .background(LinearGradient(colors: [Color.theme.buttonBorder.opacity(0.7), Color.theme.secondaryPurpleColor.opacity(0.5)],
                startPoint: .leading, endPoint: .trailing))
            .cornerRadius(12)
            .overlay(RoundedRectangle(cornerRadius: 12)
                .stroke(Color.theme.buttonBorder.opacity(0.2), lineWidth: 2))
    }
}
