//
//  Color.swift
//  Quizilla
//
//  Created by Familjen on 2026-03-29.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
    
    static func backgroundColor(index: Int, correctAnswerIndex: Int, selectedAnswerIndex: Int?) -> Color {
        
        if let selected = selectedAnswerIndex {
            if index == correctAnswerIndex {
                return .green.opacity(0.65)
            } else if index == selected {
                return red.opacity(0.65)
            }
        }
        return Color.theme.secondaryPurpleColor.opacity(0.15)
    }
}

struct ColorTheme {
    let background = Color("BackgroundColor")
    let text = Color("TextColor")
    let secondaryTextColor = Color("SecondaryTextColor")
    let purpleColor = Color("PurpleColor")
    let secondaryPurpleColor = Color("SecondaryPurpleColor")
    let pinkColor = Color("PinkColor")
    let buttonBorder = Color("ButtonBorderColor")
    let buttonTextColor = Color("ButtonTextColor")
    let thirdPurpleColor = Color("ThirdPurpleColor")
    let greenColor = Color("GreenColor")
    let redColor = Color("RedColor")
}
