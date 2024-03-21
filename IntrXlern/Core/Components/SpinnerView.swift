//
//  SpinnerView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct SpinnerView: View {

    @State private var rotation: Double = 0

    var body: some View {
        GeometryReader { geometry in
            Image(.icon)
                .scaledToFit()
                .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                .offset(y: -11)
                .background( OnboardingBackgroundView().ignoresSafeArea() )
                .overlay(
                    Image(.spinner)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .rotationEffect(Angle(degrees: rotation))
                        .animation(.linear(duration: 1.0).repeatForever(autoreverses: false), value: UUID())
                        .position(x: geometry.size.width / 2, y: geometry.size.height - 100)
                )
        }
        .onAppear {
            self.rotation = 360.0
        }
    }
}

#Preview {
    SpinnerView()
}
