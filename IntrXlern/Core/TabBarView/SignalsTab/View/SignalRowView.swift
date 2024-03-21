//
//  SignalRowView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct SignalRowView: View {

    let signal: SignalModel

    var body: some View {
        HStack {
            Image(signal.iconImage)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)

            Text(signal.name)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.white)

            Spacer()

            Text(signal.currentTime)
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.white)

            Spacer()

            Image(signal.arrowStatus.arrowName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .foregroundStyle(signal.arrowStatus.backgroundColor)

            Text(LocalizedStringKey(signal.arrowStatus.displayText))
                .font(.system(size: 16, weight: .medium))
                .foregroundStyle(signal.arrowStatus.backgroundColor)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 56)
        .background(Color.theme.backgroundComponents)
        .cornerRadius(10)
    }
}
