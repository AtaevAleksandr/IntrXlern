//
//  SignalViewModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import Foundation

final class SignalViewModel: ObservableObject {

    @Published var allSignals: [SignalModel] = SignalModel.signals

    //MARK: GENERATE DATA
    func generateFiveRandomSignals() {
        var signalsData: [SignalModel] = SignalModel.signals

        signalsData.shuffle()

        let randomData: [SignalModel] = Array(signalsData.prefix(Int.random(in: 5...5))).enumerated().map { index, originalSignal in
            var randomSignalModel = originalSignal
            let date = Date().addingTimeInterval(TimeInterval(index * 60))
            randomSignalModel.currentTime = getTimeFromDate(date)
            return randomSignalModel
        }

        self.allSignals = randomData
        objectWillChange.send()
    }

    private func getTimeFromDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}
