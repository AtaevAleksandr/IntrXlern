//
//  DemoRateAppView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct DemoRateAppView: View {
    var body: some View {
        VStack {
            Text("Help us to improve the app")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)

            Spacer()

            Text("Other users about us")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.white)

            Image(.demoUserRate)
                .resizable()
                .scaledToFit()
                .padding(.top)
                .background(
                    Ellipse()
                        .foregroundStyle(Color.theme.customPurple)
                        .frame(width: 300, height: 180)
                        .opacity(0.6)
                        .blur(radius: 65)
                )

            Spacer()
            Spacer()
        }
        .padding()
        .clipped()
    }
}

#Preview {
    ZStack {
        OnboardingBackgroundView().ignoresSafeArea()
        DemoRateAppView()
    }
}
