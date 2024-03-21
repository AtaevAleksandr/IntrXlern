//
//  LessonListView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct LessonListView: View {

    @Binding var show: Bool
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    title
                    dismissButton
                }
            }
        }
    }
}

//MARK: EXTENSION
extension LessonListView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .principal) {
            Text("Lessons")
                .font(.system(size: 18, weight: .bold))
                .foregroundStyle(.white)
        }
    }

    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                dismiss()
            } label: {
                Text("Back")
                    .font(.system(size: 15, weight: .semibold))
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    LessonListView(show: .constant(false))
        .environmentObject(LessonViewModel())
}
