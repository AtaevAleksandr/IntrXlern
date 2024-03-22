//
//  SixthQuizGameView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 06.03.2024.
//

import SwiftUI

struct SixthQuizGameView: View {

    @State var selectionOne: String?
    @State var selectionTwo: String?
    @State var selectionThree: String?
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
                                Text("In the BIS breakdown of market players, would Citibank and JP Morgan Chase be considered")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionOne = "Reporting dealers"
                                    if selectionOne == "Reporting dealers" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "Reporting dealers" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Reporting dealers")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionOne = "Other financial institutions"
                                    if selectionOne == "Other financial institutions" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "Other financial institutions" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Other financial institutions")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionOne = "Non-financial customers"
                                    if selectionOne == "Non-financial customers" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "Non-financial customers" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Non-financial customers")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 2
                            VStack(alignment: .leading, spacing: 15) {
                                Text("What kind of trader are you to the BIS?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionTwo = "Reporting dealer"
                                    if selectionTwo == "Reporting dealer" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "Reporting dealer" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Reporting dealer")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "Other financial institutions"
                                    if selectionTwo == "Other financial institutions" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "Other financial institutions" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Other financial institutions")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "Non-financial customers"
                                    if selectionTwo == "Non-financial customers" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "Non-financial customers" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Non-financial customers")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 3
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Non-financial customers represented 53% of average daily trading as of April 2013.")
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

                            //QUESTION 4
                            VStack(alignment: .leading, spacing: 15) {
                                Text("A sovereign wealth fund never speculates in the FX market.")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionFour = "True"
                                    if selectionFour == "True" {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFour == "True" {
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
                                    selectionFour = "False"
                                    if selectionFour == "False" {
                                        isAnswerFourCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionFour == "False" {
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

                            //QUESTION 5
                            VStack(alignment: .leading, spacing: 15) {
                                Text("In what country does the bulk of all currency trading take place?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionFive = "United States"
                                    if selectionFive == "United States" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "United States" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("United States")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "Hong Kong"
                                    if selectionFive == "Hong Kong" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "Hong Kong" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Hong Kong")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "United Kingdom"
                                    if selectionFive == "United Kingdom" {
                                        isAnswerFiveCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "United Kingdom" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("United Kingdom")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "Switzerland"
                                    if selectionFive == "Switzerland" {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "Switzerland" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Switzerland")
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
extension SixthQuizGameView {
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
    SixthQuizGameView(isShowQuizGame: .constant(false))

}
