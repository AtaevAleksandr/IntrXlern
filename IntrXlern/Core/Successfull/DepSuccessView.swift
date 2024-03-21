//
//  DepSuccessView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct DepSuccessView: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            OnboardingBackgroundView().ignoresSafeArea()

            VStack {
                Spacer()

                VStack {
                    Image(.depComplete)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)

                    Text("Your first deposit was successful.")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundStyle(.white)
                        .padding(.top, 16)

                    Text("Confrats!")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundStyle(.white)
                }
                .padding(.horizontal)
                .frame(height: 202)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color.theme.customPurple, lineWidth: 1)
                        .background(Color.theme.background.opacity(0.3))
                )

                Spacer()
                bottomButton
            }
        }
    }
}

//MARK: COMPONENTS
extension DepSuccessView {
    private var bottomButton: some View {
        Button {
            dismiss()
        } label: {
            Text("Next")
                .font(.system(size: 16, weight: .semibold))
                .foregroundStyle(.white)
                .frame(height: 53)
                .frame(maxWidth: .infinity)
                .background(Color.theme.customPurple)
                .cornerRadius(12)
                .animation(nil, value: UUID())
                .padding()
        }
    }
}

#Preview {
    DepSuccessView()
}
