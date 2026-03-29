//
//  GradientBackground.swift
//  Quizilla
//
//  Created by Familjen on 2026-03-29.
//

import Foundation
import SwiftUI

struct GradientCard: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color.theme.background,
                    Color.theme.pinkColor.opacity(0.4)
                ],
                               
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            content

        }
    }
}

extension View {
    func gradientCard() -> some View {
        self.modifier(GradientCard())
    }
}
