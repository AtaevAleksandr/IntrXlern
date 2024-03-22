//
//  NinthQuizGameView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 06.03.2024.
//

import SwiftUI

struct NinthQuizGameView: View {

    @State var selectionOne: String?
    @State var selectionTwo: String?
    @State var selectionThree: String?
    @State var selectionFour: String?
    @State var selectionFive: String?
    @State var selectionSix: String?

    @State var countOfResult: Int = 0
    @State var countOfQuestions: Int = 6

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false
    @State var isAnswerFourCorrect: Bool = false
    @State var isAnswerFiveCorrect: Bool = false
    @State var isAnswerSixCorrect: Bool = false

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
                                Text("In Forex, you can refer to the smallest trading unit as a point instead of a pip.")
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
                                Text("Forex rates are quoted to how many digits past the decimal point at maximum?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionTwo = "3"
                                    if selectionTwo == "3" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "3" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("3")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "4"
                                    if selectionTwo == "4" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "4" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("4")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "5"
                                    if selectionTwo == "5" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "5" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("5")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }            
                            }
                            .padding(.vertical)

                            //QUESTION 3
                            VStack(alignment: .leading, spacing: 15) {
                                Text("A fractional pip is worth how much of a full pip?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionThree = "0.1"
                                    if selectionThree == "0.1" {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "0.1" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("0.1")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionThree = "0.01"
                                    if selectionThree == "0.01" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "0.01" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("0.01")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionThree = "0.001"
                                    if selectionThree == "0.001" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "0.001" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("0.001")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 4
                            VStack(alignment: .leading, spacing: 15) {
                                Text("To calculate pip value in a European-quotation convention currency like the USD/CHF, you use the")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionFour = "Entry price"
                                    if selectionFour == "Entry price" {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFour == "Entry price" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Entry price")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFour = "Exit price"
                                    if selectionFour == "Exit price" {
                                        isAnswerFourCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionFour == "Exit price" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Exit price")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 5
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Each pip in a standard USD-based contract is worth how much?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionFive = "$1"
                                    if selectionFive == "$1" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "$1" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("$1")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "$10"
                                    if selectionFive == "$10" {
                                        isAnswerFiveCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "$10" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("$10")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "$100"
                                    if selectionFive == "$100" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "$100" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("$100")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 6
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Exotic currencies have")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionSix = "Higher pip values in dollar terms"
                                    if selectionSix == "Higher pip values in dollar terms" {
                                        isAnswerSixCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionSix == "Higher pip values in dollar terms" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Higher pip values in dollar terms")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionSix = "Lower pip values in dollar terms"
                                    if selectionSix == "Lower pip values in dollar terms" {
                                        isAnswerSixCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionSix == "Lower pip values in dollar terms" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Lower pip values in dollar terms")
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
                                let totalCorrectAnswers = [isAnswerOneCorrect, isAnswerTwoCorrect, isAnswerThreeCorrect, isAnswerFourCorrect, isAnswerFiveCorrect, isAnswerSixCorrect].filter { $0 == true }.count
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
extension NinthQuizGameView {
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
    NinthQuizGameView(isShowQuizGame: .constant(false))

}
