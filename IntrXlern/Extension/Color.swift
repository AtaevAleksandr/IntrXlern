//
//  Color.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import Foundation
import SwiftUI

extension Color {

    static let theme = ColorTheme()
}

struct ColorTheme {
    let background: Color = Color("BackgroundColor")
    let customPurple: Color = Color("CustomPurpleColor")
    let backgroundComponents: Color = Color("BackgroundComponents")
    let customGray: Color = Color("CustomGrayColor")
    let backgroundWeb: Color = Color("BackgroundWeb")
    let customGreen: Color = Color("CustomGreenColor")
    let customRed: Color = Color("CustomRedColor")
    let textGray: Color = Color("TextGrayColor")
    let yesButton: Color = Color("YesButtonColor")
    let completeBackColor: Color = Color("CompleteBackButtonColor")
    let notActive: Color = Color("NotActiveButtonColor")
}
