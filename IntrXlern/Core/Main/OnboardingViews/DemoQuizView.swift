//
//  DemoQuizView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct DemoQuizView: View {
    var body: some View {
        VStack {
            Text("A great opportunity")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)

            Spacer()

            Image(.demoQuiz)
                .resizable()
                .scaledToFit()
                .padding(.top)
                .background(
                    Ellipse()
                        .foregroundStyle(Color.theme.customPurple)
                        .frame(width: 300, height: 250)
                        .opacity(0.6)
                        .blur(radius: 65)
                )

            Spacer()

            Text("Get your unique experience now")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.white)

            Spacer()
        }
        .padding()
        .clipped()
    }
}

#Preview {
    ZStack {
        OnboardingBackgroundView().ignoresSafeArea()
        DemoQuizView()
    }
}
