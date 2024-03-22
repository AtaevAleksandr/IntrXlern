//
//  TabBarView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct TabBarView: View {

    init() {
        let coloredNavBarAppearance = UINavigationBarAppearance()
        coloredNavBarAppearance.configureWithOpaqueBackground()
        coloredNavBarAppearance.backgroundColor = UIColor(Color.theme.background)

        UINavigationBar.appearance().standardAppearance = coloredNavBarAppearance
        UINavigationBar.appearance().compactAppearance = coloredNavBarAppearance

        let coloredTabBarAppearance = UITabBarAppearance()
        coloredTabBarAppearance.configureWithOpaqueBackground()
        coloredTabBarAppearance.backgroundColor = UIColor(Color.theme.background)

        UITabBar.appearance().standardAppearance = coloredTabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = coloredTabBarAppearance
    }

    @State private var selectedTab: Int = 1

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem { Label("Home", image: "Home") }.tag(1)

            SignalsView(viewModel: SignalViewModel())
                .tabItem { Label("Signals", image: "Signals") }.tag(2)

            SettingsView()
                .tabItem { Label("Settings", image: "Settings") }.tag(3)
        }
        .accentColor(Color.theme.customPurple)
    }
}

#Preview {
    TabBarView()
        .preferredColorScheme(.dark)
        .environmentObject(BasedLearnViewModel())
        .environmentObject(IntroductionViewModel())
}
