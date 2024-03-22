//
//  QuizModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 22.03.2024.
//

import Foundation
import SwiftUI

struct QuizModel: Identifiable, Codable, Hashable {
    
    let id: Int
    let title: String
    var isComplete: Bool = false
    var isActive: Bool = false
    var backgroundColor: Color {
        if isComplete {
            return Color.theme.completeBackColor
        } else if isActive {
            return Color.theme.customPurple
        } else {
            return Color.theme.notActive
        }
    }

    var textColor: Color {
        if isComplete {
            return Color.theme.customGray
        } else if isActive {
            return Color.white
        } else {
            return Color.theme.customGray
        }
    }

    static var quizzes: [QuizModel] = [
        QuizModel(id: 1, title: "What Is Forex Trading?"),
        QuizModel(id: 2, title: "Why Do Currency Rates Change?"),
        QuizModel(id: 3, title: "Why Trade Forex?"),
        QuizModel(id: 4, title: "Word of Warning to Forex Traders"),
        QuizModel(id: 5, title: "Detailed View on Currency Pairs"),
        QuizModel(id: 6, title: "Forex Market Structure"),
        QuizModel(id: 7, title: "Trading Sessions"),
        QuizModel(id: 8, title: "How Is Money Made in Forex?"),
        QuizModel(id: 9, title: "Pips"),
        QuizModel(id: 10, title: "Lots"),
        QuizModel(id: 11, title: "Margin and Leverage"),
        QuizModel(id: 12, title: "Trading Orders"),
        QuizModel(id: 13, title: "Demo Trading")
    ]
}
