//
//  GradientBackground.swift
//  Quizilla
//
//  Created by Familjen on 2026-03-29.
//

import Foundation
import SwiftUI

struct GradientBackground: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color.theme.background,
                    Color.theme.purpleColor.opacity(0.4)
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
    func gradientBackground() -> some View {
        self.modifier(GradientBackground())
    }
}
