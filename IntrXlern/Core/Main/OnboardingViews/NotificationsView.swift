//
//  NotificationsView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("Don't miss out on new signal")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.horizontal)

            ZStack {
                blurEllipse
                phone
                    .overlay(backgroundPhone, alignment: .bottom)
                notifications
            }
        }
        .clipped()
    }
}

//MARK: COMPONENTS
extension NotificationsView {
    private var blurEllipse: some View {
        Image(.blur)
            .resizable()
    }

    private var phone: some View {
        Image(.iPhone)
            .resizable()
            .scaledToFit()
            .padding(.top, 20)
            .padding(.horizontal, 50)
    }

    private var notifications: some View {
        Image(.notification)
            .resizable()
            .scaledToFit()
            .offset(y: -110)
            .padding(.horizontal)
    }

    private var backgroundPhone: some View {
        Image(.backgroundPhone)
            .resizable()
            .scaledToFit()
            .offset(y: 90)
    }
}

#Preview {
    ZStack {
        OnboardingBackgroundView().ignoresSafeArea()
        NotificationsView()
    }
}
