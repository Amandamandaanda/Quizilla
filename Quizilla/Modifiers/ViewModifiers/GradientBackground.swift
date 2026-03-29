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
                stops: [
                    .init(color: Color.theme.thirdPurpleColor, location: 0.0),
                    .init(color: Color.theme.purpleColor, location: 0.2),
                    .init(color: Color.theme.secondaryPurpleColor, location: 0.8),
                    
                    .init(color: Color.theme.secondaryPurpleColor, location: 1.0)
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
