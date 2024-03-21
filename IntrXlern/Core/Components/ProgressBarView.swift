//
//  ProgressBarView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct ProgressBarView: View {
    
    var barTotal: CGFloat
    var barValue: CGFloat

    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .clipShape(RoundedRectangle(cornerRadius: .infinity))
                    .foregroundStyle(Color.theme.backgroundComponents)

                Rectangle()
                    .foregroundStyle(Color.theme.customGreen)
                    .clipShape(RoundedRectangle(cornerRadius: .infinity))
                    .frame(width: geometry.size.width * CGFloat(barValue) / CGFloat(barTotal))
            }
        }
        .frame(height: 20)
    }
}

#Preview {
    ProgressBarView(barTotal: 8, barValue: 5)
}
