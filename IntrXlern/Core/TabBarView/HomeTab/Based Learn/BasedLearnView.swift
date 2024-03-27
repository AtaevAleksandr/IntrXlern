//
//  BasedLearnView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct BasedLearnView: View {

    @Binding var show: Bool
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject private var viewModel: BasedLearnViewModel

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Text("We offer you 5 basic lessons, starting with them, you will gain new knowledge and become closer to understanding the forex market")
                            .font(.system(size: 18, weight: .semibold))
                            .foregroundStyle(.white)
                            .padding(.top, 16)

                        VStack(spacing: 10) {
                            HStack {
                                Spacer()

                                Text("\(viewModel.completedLessonsCount)/\(viewModel.totalLessonsCount)")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundStyle(Color.theme.customGray)
                            }

                            ForEach(viewModel.allLessons) { lesson in
                                if lesson.isComplete || lesson.id == 1 || lesson.isActive {
                                    NavigationLink(destination: BasedLearnRowView(lesson: lesson)) {
                                        HStack(spacing: 15) {
                                            Text("Lvl \(lesson.id)")
                                                .font(.system(size: 16, weight: .semibold))
                                                .foregroundStyle(.white)

                                            Text(lesson.title)
                                                .font(.system(size: 16, weight: .medium))
                                                .foregroundStyle(lesson.textColor)

                                            Spacer()
                                            Image(systemName: "checkmark.circle")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 24, height: 24)
                                                .foregroundStyle(Color.theme.customGreen.opacity(lesson.isComplete ? 1 : 0))
                                        }
                                        .padding(.horizontal)
                                        .frame(height: 60)
                                        .background(lesson.backgroundColor)
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    }
                                } else {
                                    Button(action: {}) {
                                        HStack(spacing: 15) {
                                            Text("Lvl \(lesson.id)")
                                                .font(.system(size: 16, weight: .semibold))
                                                .foregroundStyle(.white)

                                            Text(lesson.title)
                                                .font(.system(size: 16, weight: .medium))
                                                .foregroundStyle(Color.theme.customGray)

                                            Spacer()
                                        }
                                        .padding(.horizontal)
                                        .frame(height: 60)
                                        .background(Color.theme.notActive)
                                        .clipShape(RoundedRectangle(cornerRadius: 12))
                                    }
                                    .disabled(true)
                                }
                            }

                            Text("Coming soon...")
                                .font(.system(size: 16, weight: .medium))
                                .foregroundStyle(Color.theme.customGray)
                                .padding(.horizontal)
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Color.theme.notActive)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                        }
                    }
                    .padding()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                title
                dismissButton
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension BasedLearnView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Learn")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }

    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                dismiss()
            } label: {
                Text("Back")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    BasedLearnView(show: .constant(false))
        .environmentObject(BasedLearnViewModel())
}
