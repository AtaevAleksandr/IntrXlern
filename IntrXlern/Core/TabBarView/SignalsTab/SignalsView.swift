//
//  SignalsView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct SignalsView: View {

    @StateObject var viewModel: SignalViewModel

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    @State private var nextUpdateTime: Date = {
        let calendar = Calendar.current
        let endTime = calendar.date(byAdding: .second, value: 300, to: Date()) ?? Date()
        return endTime
    }()

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                VStack {
                    randomSignals
                    Spacer()
                }
                .padding()
            }
            .onReceive(timer) { _ in
                withAnimation(.linear(duration: 0.5)) {
                    DispatchQueue.main.async {
                        updateTimeRemaining()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
        }
        .navigationViewStyle(.stack)
    }

    //MARK: FUNCTIONS
    func updateTimeRemaining() {
        let currentTime = Date()
        let calendar = Calendar.current

        if currentTime >= nextUpdateTime {
            nextUpdateTime = calendar.date(byAdding: .second, value: 300, to: Date()) ?? Date()
            DispatchQueue.main.async {
                viewModel.generateFiveRandomSignals()
            }
        }
    }
}

//MARK: EXTENSION
extension SignalsView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Signals")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }

    private var randomSignals: some View {
        ForEach(viewModel.allSignals.prefix(5)) { signal in
            SignalRowView(signal: signal)
        }
    }
}

#Preview {
    SignalsView(viewModel: SignalViewModel())
}
