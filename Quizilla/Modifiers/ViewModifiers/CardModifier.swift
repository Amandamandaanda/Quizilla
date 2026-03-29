//
//  CardModifier.swift
//  Quizilla
//
//  Created by Familjen on 2026-03-29.
//

import Foundation
import SwiftUI

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(.black)
            .font(.subheadline)
            .fontWeight(.semibold)
            .padding()
            .frame(maxWidth: 350, maxHeight: 200)
            .background(.white)
            .cornerRadius(16)
            .shadow(color:Color.black.opacity(0.25), radius: 2, x: 4, y: 4)
    }
}
