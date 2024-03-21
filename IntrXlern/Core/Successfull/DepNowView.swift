//
//  DepNowView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct DepNowView: View {
    
    @Binding var showView: Bool

    var body: some View {
        ZStack {
            OnboardingBackgroundView().ignoresSafeArea()

            VStack {
                Text("Congratulations!")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .padding(.top)

                Text("Your demo account is growing. Start earning from your first deposit now!")
                    .font(.system(size: 24, weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)

                Spacer()

                Image(.depNow)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 214)

                Spacer()
                bottomButton
            }
        }
    }
}

//MARK: COMPONENTS
extension DepNowView {
    private var bottomButton: some View {
        Button {
            showView.toggle()
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
    DepNowView(showView: .constant(false))
}
