//
//  FifthQuizGameView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 05.03.2024.
//

import SwiftUI

struct FifthQuizGameView: View {

    @State var selectionOne: String?
    @State var selectionTwo: String?

    @State var selectionOneOfThree: String?
    @State var selectionTwoOfThree: String?
    @State var selectionThreeOfThree: String?

    @State var selectionFour: String?
    @State var selectionFive: String?

    @State var countOfResult: Int = 0
    @State var countOfQuestions: Int = 5

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false
    @State var isAnswerFourCorrect: Bool = false
    @State var isAnswerFiveCorrect: Bool = false

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
                                Text("In dollar terms, how much is trading globally in currencies each day?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionOne = "$10 million"
                                    if selectionOne == "$10 million" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "$10 million" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("$10 million")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionOne = "$4 billion"
                                    if selectionOne == "$4 billion" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "$4 billion" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("$4 billion")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionOne = "$5 trillion"
                                    if selectionOne == "$5 trillion" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "$5 trillion" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("$5 trillion")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionOne = "More than $7 trillion"
                                    if selectionOne == "More than $7 trillion" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "More than $7 trillion" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("More than $7 trillion")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 2
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Which are the three most commonly traded currency pairs?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionTwo = "Dollar/Yen, Euro/Yen, and Pound/Yen"
                                    if selectionTwo == "Dollar/Yen, Euro/Yen, and Pound/Yen" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "Dollar/Yen, Euro/Yen, and Pound/Yen" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Dollar/Yen, Euro/Yen, and Pound/Yen")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "Euro/Dollar, Dollar/Yen, and Pound/Dollar"
                                    if selectionTwo == "Euro/Dollar, Dollar/Yen, and Pound/Dollar" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "Euro/Dollar, Dollar/Yen, and Pound/Dollar" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Euro/Dollar, Dollar/Yen, and Pound/Dollar")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "Euro/Dollar, Dollar/Pound, and Euro/Pound"
                                    if selectionTwo == "Euro/Dollar, Dollar/Pound, and Euro/Pound" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "Euro/Dollar, Dollar/Pound, and Euro/Pound" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Euro/Dollar, Dollar/Pound, and Euro/Pound")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 3
                            VStack(alignment: .leading, spacing: 15) {
                                Text("What is the downside to trading a currency pair that does not include the dollar?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    if selectionOneOfThree == "Higher volatility" {
                                        selectionOneOfThree = nil
                                    } else {
                                        selectionOneOfThree = "Higher volatility"
                                    }

                                    if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" && selectionThreeOfThree == "Lack of liquidity" {
                                            isAnswerThreeCorrect = false
                                        } else if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" {
                                            isAnswerThreeCorrect = true
                                        } else {
                                            isAnswerThreeCorrect = false
                                        }
                                } label: {
                                    HStack {
                                        if selectionOneOfThree == "Higher volatility" {
                                            Image(.rectCheck)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Higher volatility")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    if selectionTwoOfThree == "Wide bid/ask spread" {
                                        selectionTwoOfThree = nil
                                    } else {
                                        selectionTwoOfThree = "Wide bid/ask spread"
                                    }

                                    if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" && selectionThreeOfThree == "Lack of liquidity" {
                                            isAnswerThreeCorrect = false
                                        } else if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" {
                                            isAnswerThreeCorrect = true
                                        } else {
                                            isAnswerThreeCorrect = false
                                        }
                                } label: {
                                    HStack {
                                        if selectionTwoOfThree == "Wide bid/ask spread" {
                                            Image(.rectCheck)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Wide bid/ask spread")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    if selectionThreeOfThree == "Lack of liquidity" {
                                        selectionThreeOfThree = nil
                                    } else {
                                        selectionThreeOfThree = "Lack of liquidity"
                                    }

                                    if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" && selectionThreeOfThree == "Lack of liquidity" {
                                            isAnswerThreeCorrect = false
                                        } else if selectionOneOfThree == "Higher volatility" && selectionTwoOfThree == "Wide bid/ask spread" {
                                            isAnswerThreeCorrect = true
                                        } else {
                                            isAnswerThreeCorrect = false
                                        }
                                } label: {
                                    HStack {
                                        if selectionThreeOfThree == "Lack of liquidity" {
                                            Image(.rectCheck)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Lack of liquidity")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 4
                            VStack(alignment: .leading, spacing: 15) {
                                Text("What currency pair does the term “cable” refer to?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionFour = "Deutschemark"
                                    if selectionFour == "Deutschemark" {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFour == "Deutschemark" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Deutschemark")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFour = "Great Britain pound"
                                    if selectionFour == "Great Britain pound" {
                                        isAnswerFourCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionFour == "Great Britain pound" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Great Britain pound")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFour = "New Zealand dollar"
                                    if selectionFour == "New Zealand dollar" {
                                        isAnswerFourCorrect = false
                                    }

                                } label: {
                                    HStack {
                                        if selectionFour == "New Zealand dollar" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The dollar was declared the world’s reserve currency.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 5
                            VStack(alignment: .leading, spacing: 15) {
                                Text("What is the only currency quoted in local currency terms that is not a former British colony?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionFive = "New Zealand dollar"
                                    if selectionFive == "New Zealand dollar" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "New Zealand dollar" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("New Zealand dollar")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "Canadian dollar"
                                    if selectionFive == "Canadian dollar" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "Canadian dollar" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Canadian dollar")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "Yen"
                                    if selectionFive == "Yen" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "Yen" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Yen")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "Euro"
                                    if selectionFive == "Euro" {
                                        isAnswerFiveCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "Euro" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Euro")
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
                                let totalCorrectAnswers = [isAnswerOneCorrect, isAnswerTwoCorrect, isAnswerThreeCorrect, isAnswerFourCorrect, isAnswerFiveCorrect].filter { $0 == true }.count
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
extension FifthQuizGameView {
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
    FifthQuizGameView(isShowQuizGame: .constant(false))

}
