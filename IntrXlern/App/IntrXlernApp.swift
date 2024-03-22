//
//  IntrXlernApp.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 20.03.2024.
//

import SwiftUI

@main
struct IntrXlernApp: App {

    @StateObject var lessonVM = BasedLearnViewModel()
    @StateObject var introVM = IntroductionViewModel()

    var body: some Scene {
        WindowGroup {
            LoadingView()
                .preferredColorScheme(.dark)
                .environmentObject(lessonVM)
                .environmentObject(introVM)
        }
    }
}
