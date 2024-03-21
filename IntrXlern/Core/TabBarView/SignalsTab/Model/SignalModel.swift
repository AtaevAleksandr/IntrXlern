//
//  SignalModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import Foundation
import SwiftUI

enum Status: Codable, CaseIterable {
    case greenArrow
    case redArrow

    var arrowName: String {
        switch self {
        case .greenArrow:
            return "ArrowUp"
        case .redArrow:
            return "ArrowDown"
        }
    }

    var displayText: String {
        switch self {
        case .greenArrow:
            return "Buy"
        case .redArrow:
            return "Sell"
        }
    }

    var backgroundColor: Color {
        switch self {
        case .greenArrow:
            return Color.theme.customGreen
        case .redArrow:
            return Color.theme.customRed
        }
    }

    static func randomStatus() -> Status {
        let allCases = self.allCases
        let randomIndex = Int.random(in: 0..<allCases.count)
        return allCases[randomIndex]
    }
}

struct SignalModel: Identifiable, Codable {
    var id = UUID()
    var iconImage: String
    var name: String
    var arrowStatus: Status
    var currentTime: String

    static func getCurrentTime() -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }

    static func incrementTime(_ currentTime: String, by minutes: Int) -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        guard let date = formatter.date(from: currentTime) else {
            return currentTime
        }
        let incrementedDate = Calendar.current.date(byAdding: .minute, value: minutes, to: date) ?? date
        return formatter.string(from: incrementedDate)
    }

    static var signals: [SignalModel] {
        let currentTime = getCurrentTime()
        return [
            SignalModel(iconImage: "AUD:CAD", name: "AUD/CAD", arrowStatus: .randomStatus(), currentTime: currentTime),
            SignalModel(iconImage: "AUD:CHF", name: "AUD/CHF", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 1)),
            SignalModel(iconImage: "AUD:JPY", name: "AUD/JPY", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 2)),
            SignalModel(iconImage: "AUD:USD", name: "AUD/USD", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 3)),
            SignalModel(iconImage: "CAD:CHF", name: "CAD/CHF", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 4)),
            SignalModel(iconImage: "CAD:JPY", name: "CAD/JPY", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 5)),
            SignalModel(iconImage: "EUR:CAD", name: "EUR/CAD", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 6)),
            SignalModel(iconImage: "EUR:CHF", name: "EUR/CHF", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 7)),
            SignalModel(iconImage: "EUR:GBP", name: "EUR/GBP", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 8)),
            SignalModel(iconImage: "EUR:JPY", name: "EUR/JPY", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 9)),
            SignalModel(iconImage: "EUR:USD", name: "EUR/USD", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 10)),
            SignalModel(iconImage: "GBP:AUD", name: "GBP/AUD", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 11)),
            SignalModel(iconImage: "GBP:CHF", name: "GBP/CHF", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 12)),
            SignalModel(iconImage: "GBP:JPY", name: "GBP/JPY", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 13)),
            SignalModel(iconImage: "GBP:USD", name: "GBP/USD", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 14)),
            SignalModel(iconImage: "USD:CAD", name: "USD/CAD", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 15)),
            SignalModel(iconImage: "USD:CHF", name: "USD/CHF", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 16)),
            SignalModel(iconImage: "USD:JPY", name: "USD/JPY", arrowStatus: .randomStatus(), currentTime: incrementTime(currentTime, by: 17))
        ]
    }
}
