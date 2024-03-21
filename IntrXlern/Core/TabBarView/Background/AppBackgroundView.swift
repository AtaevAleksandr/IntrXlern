//
//  AppBackgroundView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct AppBackgroundView: View {
    var body: some View {
        Color.theme.background
            .ignoresSafeArea()
    }
}

#Preview {
    AppBackgroundView()
}
