//
//  DemoChartView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct DemoChartView: View {
    var body: some View {
        VStack {
            Text("Affordable trainig for beginners")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.horizontal)

            ZStack {
                blurEllipse
                phone
                    .overlay(backgroundPhone, alignment: .bottom)
            }
        }
        .clipped()
    }
}

//MARK: COMPONENTS
extension DemoChartView {
    private var blurEllipse: some View {
        Image(.blur)
            .resizable()
    }

    private var phone: some View {
        Image(.demoChart)
            .resizable()
            .scaledToFit()
            .padding(.top, 20)
            .padding(.horizontal, 50)
    }

    private var backgroundPhone: some View {
        Image(.backgroundPhone)
            .resizable()
            .scaledToFit()
            .offset(y: 100)
    }
}

#Preview {
    ZStack {
        OnboardingBackgroundView().ignoresSafeArea()
        DemoChartView()
    }
}
