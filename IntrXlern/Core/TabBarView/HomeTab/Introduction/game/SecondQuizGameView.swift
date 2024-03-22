//
//  SecondQuizGameView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 05.03.2024.
//

import SwiftUI

struct SecondQuizGameView: View {

    @State var selectionOneOfOne: String?
    @State var selectionTwoOfOne: String?
    @State var selectionThreeOfOne: String?

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
                                Text("Forex rates move on")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    if selectionOneOfOne == "The chart" {
                                        selectionOneOfOne = nil
                                    } else {
                                        selectionOneOfOne = "The chart"
                                    }

                                    if selectionOneOfOne == "The chart" && selectionTwoOfOne == "The economic data" && selectionThreeOfOne == "The news" {
                                        isAnswerOneCorrect = true
                                    } else {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOneOfOne == "The chart" {
                                            Image(.rectCheck)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The chart")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    if selectionTwoOfOne == "The economic data" {
                                        selectionTwoOfOne = nil
                                    } else {
                                        selectionTwoOfOne = "The economic data"
                                    }

                                    if selectionOneOfOne == "The chart" && selectionTwoOfOne == "The economic data" && selectionThreeOfOne == "The news" {
                                        isAnswerOneCorrect = true
                                    } else {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwoOfOne == "The economic data" {
                                            Image(.rectCheck)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The economic data")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    if selectionThreeOfOne == "The news" {
                                        selectionThreeOfOne = nil
                                    } else {
                                        selectionThreeOfOne = "The news"
                                    }

                                    if selectionOneOfOne == "The chart" && selectionTwoOfOne == "The economic data" && selectionThreeOfOne == "The news" {
                                        isAnswerOneCorrect = true
                                    } else {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionThreeOfOne == "The news" {
                                            Image(.rectCheck)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The news")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 2
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Forex market does not have a consensus view of relative economic conditions.")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionTwo = "True"
                                    if selectionTwo == "True" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "True" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("True")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "False"
                                    if selectionTwo == "False" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "False" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("False")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 3
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Some traders will buy back an oversold currency because of the chart alone, regardless of the economics.")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionThree = "True"
                                    if selectionThree == "True" {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "True" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("True")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionThree = "False"
                                    if selectionThree == "False" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "False" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("False")
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
extension SecondQuizGameView {
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
    SecondQuizGameView(isShowQuizGame: .constant(false))
}
