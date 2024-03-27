//
//  LoadingView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 20.03.2024.
//

import SwiftUI

struct LoadingView: View {

    @AppStorage("isAlredyOnboarding") var isAlredyOnboarding: Bool = false
    @AppStorage("isFinishLaunch") var isFinishLaunch: Bool = true
    @AppStorage("isNotificationPermissionGranted") var isNotificationPermissionGranted: Bool = false

    @State private var isInitialLoadingCompleted: Bool = false
    @State private var isLoading: Bool = false

    var body: some View {
        ZStack {
            if isAlredyOnboarding && isInitialLoadingCompleted {
                TabBarView()
            } else {
                OnboardingView()
            }

            if isLoading {
                SpinnerView()
            }
        }
        .onAppear {
            fakeStartLoading()
        }
    }

    //MARK: Functions
    private func fakeStartLoading() {
        isLoading = true

        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
            isLoading = false
            isInitialLoadingCompleted = true
        }
    }
}
#Preview {
    LoadingView()
}
