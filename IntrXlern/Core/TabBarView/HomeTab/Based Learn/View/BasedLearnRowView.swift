//
//  BasedLearnRowView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import SwiftUI

struct BasedLearnRowView: View {

    @EnvironmentObject var viewModel: BasedLearnViewModel
    @Environment(\.dismiss) var dismiss

//    let lesson: BasedLearnModel

    @State private var currentLesson: BasedLearnModel

        init(lesson: BasedLearnModel) {
            _currentLesson = State(initialValue: lesson)
        }

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                VStack {
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text(currentLesson.title)
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text(currentLesson.text)
                                .font(.system(size: 16, weight: .medium))
                                .foregroundStyle(Color.theme.textGray)
                        }
                        .padding()
                    }

                    Button {
                        goToNextLesson()
                    } label: {
                        Text("Next Lesson")
                            .font(.system(size: 16, weight: .semibold))
                            .foregroundStyle(.white)
                            .frame(height: 53)
                            .frame(maxWidth: .infinity)
                            .background(Color.theme.customPurple)
                            .cornerRadius(12)
                            .animation(nil, value: UUID())
                            .padding()
                    }
                    .disabled(viewModel.isLastLesson(currentLesson) ? true : false)
                    .opacity(viewModel.isLastLesson(currentLesson) ? 0 : 1)
                }
            }
            .toolbar {
                title
                dismissButton
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    viewModel.completeLesson(currentLesson)
                }
            }
        }
        .navigationViewStyle(.stack)
        .navigationBarBackButtonHidden(true)
    }

    private func goToNextLesson() {
            if let nextLesson = viewModel.nextLesson(after: currentLesson) {
                currentLesson = nextLesson
                viewModel.completeLesson(nextLesson)
            }
        }
}

//MARK: EXTENSION
extension BasedLearnRowView {
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
    BasedLearnRowView(lesson: BasedLearnModel(id: 1, title: "Fundamental Analysis", text: "Forex fundamental analysis is a type of market analysis that is performed based only on actual events and macroeconomic data related to the traded currencies. Fundamental analysis is used not only in Forex but can be a part of any financial planning or forecasting. The concepts that are part of fundamental analysis of currencies: overnight interest rates, central bank meetings and decisions, any macroeconomic news, global industrial, economic, political, and weather news. Fundamental analysis is the most natural way of making FX market forecasts. In theory, it alone should work perfectly but in practice, it is often used in pair with technical analysis."))
        .environmentObject(BasedLearnViewModel())
}
