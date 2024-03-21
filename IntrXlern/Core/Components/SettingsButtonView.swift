//
//  SettingsButtonView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct SettingsButtonView: View {

    var icon: String
    var title: String
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            HStack() {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)

                Text(LocalizedStringKey(title))
                    .font(.system(size: 16, weight: .semibold))

                Spacer()
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 48)
        .foregroundStyle(.white)
        .background(Color.theme.backgroundComponents)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
