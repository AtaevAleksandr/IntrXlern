//
//  AnalyticsView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 03.04.2024.
//

import SwiftUI

struct AnalyticsView: View {

    @State private var selectedWebWidget: WebWidget = .heatWidget

    init() {
        let selected: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.systemFont(ofSize: 14, weight: .medium)
        ]
        let normal: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(Color.theme.customGray),
            .font: UIFont.systemFont(ofSize: 14)
        ]
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color.theme.customPurple)
        UISegmentedControl.appearance().backgroundColor = UIColor(Color.theme.backgroundComponents)
        UISegmentedControl.appearance().setTitleTextAttributes(selected, for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes(normal, for: .normal)

    }

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                VStack(spacing: 16) {
                    Picker("Select Web", selection: $selectedWebWidget) {
                        ForEach(WebWidget.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                    }
                    .frame(height: 40)
                    .pickerStyle(SegmentedPickerStyle())

                    ChoosenWebWidget(selectedWidget: selectedWebWidget)

                    Spacer()
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension AnalyticsView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Analytics")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

extension UISegmentedControl {
    override open func didMoveToSuperview() {
        super.didMoveToSuperview()
        self.setContentHuggingPriority(.defaultLow, for: .vertical)
    }
}

#Preview {
    AnalyticsView()
}
