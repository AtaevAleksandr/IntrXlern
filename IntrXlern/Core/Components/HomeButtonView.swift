//
//  HomeButtonView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct HomeButtonView: View {

    var title: String
    var icon: String
    var action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            HStack() {
                Text(LocalizedStringKey(title))
                    .font(.system(size: 16, weight: .semibold))

                Spacer()

                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 56)
        .foregroundStyle(.white)
        .background(Color.theme.completeBackColor)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
