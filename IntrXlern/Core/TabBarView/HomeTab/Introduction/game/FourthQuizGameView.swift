//
//  FourthQuizGameView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 05.03.2024.
//

import SwiftUI

struct FourthQuizGameView: View {

    @State var selectionOne: String?
    @State var selectionTwo: String?
    @State var selectionThree: String?

    @State var countOfResult: Int = 0
    @State var countOfQuestions: Int = 3

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false

    @Binding var isShowQuizGame: Bool

    @State var showAlert: Bool = false

    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    AppBackgroundView()

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 20) {
                            //QUESTION 1
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Forex is so appealing to traders because")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionOne = "Currencies are trended."
                                    if selectionOne == "Currencies are trended." {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "Currencies are trended." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Currencies are trended.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionOne = "Brokers make it easy to open an account."
                                    if selectionOne == "Brokers make it easy to open an account." {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "Brokers make it easy to open an account." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Brokers make it easy to open an account.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionOne = "High leverage allows bigger earnings."
                                    if selectionOne == "High leverage allows bigger earnings." {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "High leverage allows bigger earnings." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("High leverage allows bigger earnings.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 2
                            VStack(alignment: .leading, spacing: 15) {
                                Text("The main reason beginning Forex traders fail is:")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionTwo = "Their gain/loss ratio is too low."
                                    if selectionTwo == "Their gain/loss ratio is too low." {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "Their gain/loss ratio is too low." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Their gain/loss ratio is too low.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "They take more losing trades than winning trades."
                                    if selectionTwo == "They take more losing trades than winning trades." {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "They take more losing trades than winning trades." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("They take more losing trades than winning trades.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "They do not understand risk."
                                    if selectionTwo == "They do not understand risk." {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "They do not understand risk." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("They do not understand risk.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "The lack a trading plan that combines a trading system with money management."
                                    if selectionTwo == "The lack a trading plan that combines a trading system with money management." {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "The lack a trading plan that combines a trading system with money management." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The lack a trading plan that combines a trading system with money management.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 3
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Optimum portfolio management says you can speculate with")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionThree = "10% of your total capital"
                                    if selectionThree == "10% of your total capital" {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "10% of your total capital" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("10% of your total capital")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionThree = "25% of total capital"
                                    if selectionThree == "25% of total capital" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "25% of total capital" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("25% of total capital")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionThree = "200% of total capital"
                                    if selectionThree == "200% of total capital" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "200% of total capital" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("200% of total capital")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            VStack {
                                HStack {
                                    Text("Results:")
                                    Spacer()
                                    Text("\(countOfResult)/\(countOfQuestions)")
                                }
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                                ProgressBarView(barTotal: CGFloat(countOfQuestions), barValue: CGFloat(countOfResult))
                            }
                            .padding(.top)

                            Button {
                                let totalCorrectAnswers = [isAnswerOneCorrect, isAnswerTwoCorrect, isAnswerThreeCorrect].filter { $0 == true }.count
                                countOfResult = totalCorrectAnswers
                            } label: {
                                Text("Done")
                                    .font(.system(size: 16, weight: .semibold))
                                    .foregroundStyle(.white)
                                    .frame(height: 45)
                                    .frame(maxWidth: .infinity)
                                    .background(Color.theme.customPurple)
                                    .cornerRadius(12)
                                    .animation(nil, value: UUID())
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

            if showAlert {
                CustomAlertView(isShowAlert: $showAlert)
            }
        }.animation(.spring(), value: showAlert)
    }
}

//MARK: EXTENSION
extension FourthQuizGameView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text("Quiz")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }

    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                self.showAlert.toggle()
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    FourthQuizGameView(isShowQuizGame: .constant(false))

}
