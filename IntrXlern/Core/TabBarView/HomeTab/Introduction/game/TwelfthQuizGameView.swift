//
//  TwelfthQuizGameView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 06.03.2024.
//

import SwiftUI

struct TwelfthQuizGameView: View {

    @State var selectionOne: String?

    @State var selectionOneOfTwo: String?
    @State var selectionTwoOfTwo: String?
    @State var selectionThreeOfTwo: String?

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
                                Text("Market orders are the easiest way to place orders.")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionOne = "True"
                                    if selectionOne == "True" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "True" {
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
                                    selectionOne = "False"
                                    if selectionOne == "False" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "False" {
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

                            //QUESTION 2
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Limit orders have which of the following benefits?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    if selectionOneOfTwo == "Fine-tune entry and exit" {
                                        selectionOneOfTwo = nil
                                    } else {
                                        selectionOneOfTwo = "Fine-tune entry and exit"
                                    }

                                    if selectionOneOfTwo == "Fine-tune entry and exit" && selectionTwoOfTwo == "Avoid slippage" && selectionThreeOfTwo == "Get all the fills you want" {
                                        isAnswerTwoCorrect = false
                                        } else if selectionOneOfTwo == "Fine-tune entry and exit" && selectionTwoOfTwo == "Avoid slippage" {
                                            isAnswerTwoCorrect = true
                                        } else {
                                            isAnswerTwoCorrect = false
                                        }
                                } label: {
                                    HStack {
                                        if selectionOneOfTwo == "Fine-tune entry and exit" {
                                            Image(.rectCheck)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Fine-tune entry and exit")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    if selectionTwoOfTwo == "Avoid slippage" {
                                        selectionTwoOfTwo = nil
                                    } else {
                                        selectionTwoOfTwo = "Avoid slippage"
                                    }

                                    if selectionOneOfTwo == "Fine-tune entry and exit" && selectionTwoOfTwo == "Avoid slippage" && selectionThreeOfTwo == "Get all the fills you want" {
                                        isAnswerTwoCorrect = false
                                        } else if selectionOneOfTwo == "Fine-tune entry and exit" && selectionTwoOfTwo == "Avoid slippage" {
                                            isAnswerTwoCorrect = true
                                        } else {
                                            isAnswerTwoCorrect = false
                                        }
                                } label: {
                                    HStack {
                                        if selectionTwoOfTwo == "Avoid slippage" {
                                            Image(.rectCheck)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Avoid slippage")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    if selectionThreeOfTwo == "Get all the fills you want" {
                                        selectionThreeOfTwo = nil
                                    } else {
                                        selectionThreeOfTwo = "Get all the fills you want"
                                    }

                                    if selectionOneOfTwo == "Fine-tune entry and exit" && selectionTwoOfTwo == "Avoid slippage" && selectionThreeOfTwo == "Get all the fills you want" {
                                        isAnswerTwoCorrect = false
                                        } else if selectionOneOfTwo == "Fine-tune entry and exit" && selectionTwoOfTwo == "Avoid slippage" {
                                            isAnswerTwoCorrect = true
                                        } else {
                                            isAnswerTwoCorrect = false
                                        }
                                } label: {
                                    HStack {
                                        if selectionThreeOfTwo == "Get all the fills you want" {
                                            Image(.rectCheck)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Get all the fills you want")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 3
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Orders automatically expire at the end of your trading session.")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionThree = "True"
                                    if selectionThree == "True" {
                                        isAnswerThreeCorrect = false
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
                                        isAnswerThreeCorrect = true
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
extension TwelfthQuizGameView {
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
    TwelfthQuizGameView(isShowQuizGame: .constant(false))

}
