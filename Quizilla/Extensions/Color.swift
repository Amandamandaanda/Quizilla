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
}
