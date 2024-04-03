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
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavBarAppearance

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

            AnalyticsView()
                .tabItem { Label("Analytics", image: "Analytics") }.tag(2)

            SignalsView(viewModel: SignalViewModel())
                .tabItem { Label("Signals", image: "Signals") }.tag(3)

            SettingsView()
                .tabItem { Label("Settings", image: "Settings") }.tag(4)
        }
        .accentColor(Color.theme.customPurple)
    }
}

#Preview {
    TabBarView()
        .environmentObject(SignalViewModel())
        .environmentObject(ChartViewModel())
        .environmentObject(BasedLearnViewModel())
        .environmentObject(IntroductionViewModel())
}
