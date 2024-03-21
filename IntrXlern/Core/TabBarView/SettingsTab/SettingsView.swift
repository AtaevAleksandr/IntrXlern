//
//  SettingsView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                VStack(spacing: 8) {
                    SettingsButtonView(icon: "Privacy", title: "Privacy Policy") {
                        openPrivacyLink()
                    }
                    SettingsButtonView(icon: "Support", title: "Support") {
                        openSupportLink()
                    }

                    Spacer()
                }
                .padding()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar { title }
        }
        .navigationViewStyle(.stack)
    }

    //MARK: FUNCTIONS
    func openPrivacyLink() {
        let urlString = "https://www.google.com"
        if let url = URL(string: urlString) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }

    func openSupportLink() {
        let urlString = "https://www.ya.ru"
        if let url = URL(string: urlString) {
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}

//MARK: EXTENSION
extension SettingsView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Settings")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    SettingsView()
}
