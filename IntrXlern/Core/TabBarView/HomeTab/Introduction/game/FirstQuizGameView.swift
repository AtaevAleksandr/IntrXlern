//
//  FirstQuizGameView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 04.03.2024.
//

import SwiftUI

struct FirstQuizGameView: View {

    @State var selectionOne: String?
    @State var selectionTwo: String?
    @State var selectionThree: String?
    @State var selectionFour: String?
    @State var selectionFive: String?
    @State var selectionSix: String?
    @State var selectionSeven: String?
    @State var selectionEight: String?

    @State var countOfResult: Int = 0
    @State var countOfQuestions: Int = 8

    @State var isAnswerOneCorrect: Bool = false
    @State var isAnswerTwoCorrect: Bool = false
    @State var isAnswerThreeCorrect: Bool = false
    @State var isAnswerFourCorrect: Bool = false
    @State var isAnswerFiveCorrect: Bool = false
    @State var isAnswerSixCorrect: Bool = false
    @State var isAnswerSevenCorrect: Bool = false
    @State var isAnswerEightCorrect: Bool = false

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
                                Text("Spell out the exact words for which “Forex” is an abbreviation:")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionOne = "Foreign exchange"
                                    if selectionOne == "Foreign exchange" {
                                        isAnswerOneCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "Foreign exchange" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Foreign exchange")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionOne = "FX"
                                    if selectionOne == "FX" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "FX" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("FX")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionOne = "Both foreign exchange and FX"
                                    if selectionOne == "Both foreign exchange and FX" {
                                        isAnswerOneCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionOne == "Both foreign exchange and FX" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Both foreign exchange and FX")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 2
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Before WWII, what was the most important currency in the world?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionTwo = "The Deutschmark"
                                    if selectionTwo == "The Deutschmark" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "The Deutschmark" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The Deutschmark")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "The Japanese yen"
                                    if selectionTwo == "The Japanese yen" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "The Japanese yen" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The Japanese yen")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "The US dollar"
                                    if selectionTwo == "The US dollar" {
                                        isAnswerTwoCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "The US dollar" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The US dollar")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionTwo = "The UK pound"
                                    if selectionTwo == "The UK pound" {
                                        isAnswerTwoCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionTwo == "The UK pound" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The UK pound")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 3
                            VStack(alignment: .leading, spacing: 15) {
                                Text("After WWII, what became the most important currency in the world?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionThree = "The Deutschmark"
                                    if selectionThree == "The Deutschmark" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "The Deutschmark" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The Deutschmark")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionThree = "The euro"
                                    if selectionThree == "The euro" {
                                        isAnswerThreeCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "The euro" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The euro")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionThree = "The US dollar"
                                    if selectionThree == "The US dollar" {
                                        isAnswerThreeCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionThree == "The US dollar" {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The US dollar")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 4
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Why?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionFour = "Europe is more important than the US."
                                    if selectionFour == "Europe is more important than the US." {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFour == "Europe is more important than the US." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Europe is more important than the US.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFour = "The US has the biggest economy in the world."
                                    if selectionFour == "The US has the biggest economy in the world." {
                                        isAnswerFourCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFour == "The US has the biggest economy in the world." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The US has the biggest economy in the world.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFour = "The dollar was declared the world’s reserve currency."
                                    if selectionFour == "The dollar was declared the world’s reserve currency." {
                                        isAnswerFourCorrect = true
                                    }

                                } label: {
                                    HStack {
                                        if selectionFour == "The dollar was declared the world’s reserve currency." {
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
                                Text("Why did the founders of the European Monetary Union choose to put the euro first in the name of currency pairs?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionFive = "The first name is the important name, and the second name is literally secondary."
                                    if selectionFive == "The first name is the important name, and the second name is literally secondary." {
                                        isAnswerFiveCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "The first name is the important name, and the second name is literally secondary." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The first name is the important name, and the second name is literally secondary.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "They were drawing a line between the old quotation practice (dollar/Deutschemark) and the new era of the euro."
                                    if selectionFive == "They were drawing a line between the old quotation practice (dollar/Deutschemark) and the new era of the euro." {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "They were drawing a line between the old quotation practice (dollar/Deutschemark) and the new era of the euro." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("They were drawing a line between the old quotation practice (dollar/Deutschemark) and the new era of the euro.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionFive = "They were trying to challenge the dominance of the dollar."
                                    if selectionFive == "They were trying to challenge the dominance of the dollar." {
                                        isAnswerFiveCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionFive == "They were trying to challenge the dominance of the dollar." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("They were trying to challenge the dominance of the dollar.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 6
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Why do we use the word “rate” instead of “price” in Forex?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionSix = "The word rate implies a ratio, and that is an accurate description of FX prices."
                                    if selectionSix == "The word rate implies a ratio, and that is an accurate description of FX prices." {
                                        isAnswerSixCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionSix == "The word rate implies a ratio, and that is an accurate description of FX prices." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("The word rate implies a ratio, and that is an accurate description of FX prices.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionSix = "Price is also an accurate word."
                                    if selectionSix == "Price is also an accurate word." {
                                        isAnswerSixCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionSix == "Price is also an accurate word." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Price is also an accurate word.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 7
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Why is buying foreign currency banknotes at an airport kiosk not “trading”?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionSeven = "Buying banknotes is a real physical activity, and trading refers only to notional amounts."
                                    if selectionSeven == "Buying banknotes is a real physical activity, and trading refers only to notional amounts." {
                                        isAnswerSevenCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionSeven == "Buying banknotes is a real physical activity, and trading refers only to notional amounts." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Buying banknotes is a real physical activity, and trading refers only to notional amounts.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionSeven = "You cannot change the bid-offer but are always only a price-taker."
                                    if selectionSeven == "You cannot change the bid-offer but are always only a price-taker." {
                                        isAnswerSevenCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionSeven == "You cannot change the bid-offer but are always only a price-taker." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("You cannot change the bid-offer but are always only a price-taker.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }
                            }
                            .padding(.vertical)

                            //QUESTION 8
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Why is it incorrect English usage to say “I trade the Forex”?")
                                    .font(.system(size: 18, weight: .semibold))
                                    .foregroundStyle(.white)

                                Button {
                                    selectionEight = "It is not incorrect — everyone understands it."
                                    if selectionEight == "It is not incorrect — everyone understands it." {
                                        isAnswerEightCorrect = false
                                    }
                                } label: {
                                    HStack {
                                        if selectionEight == "It is not incorrect — everyone understands it." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("It is not incorrect — everyone understands it.")
                                            .font(.system(size: 16, weight: .regular))
                                            .foregroundStyle(.white)
                                            .multilineTextAlignment(.leading)
                                    }
                                }

                                Button {
                                    selectionEight = "Because English is a confusing language where the word exchange is a verb and two types of a noun."
                                    if selectionEight == "Because English is a confusing language where the word exchange is a verb and two types of a noun." {
                                        isAnswerEightCorrect = true
                                    }
                                } label: {
                                    HStack {
                                        if selectionEight == "Because English is a confusing language where the word exchange is a verb and two types of a noun." {
                                            Image(.check)
                                                .resizable()
                                                .frame(width: 20, height: 20)

                                        } else {
                                            Circle()
                                                .stroke()
                                                .frame(width: 20, height: 20)
                                                .foregroundStyle(Color.theme.customGray)
                                        }

                                        Text("Because English is a confusing language where the word exchange is a verb and two types of a noun.")
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
                                let totalCorrectAnswers = [isAnswerOneCorrect, isAnswerTwoCorrect, isAnswerThreeCorrect, isAnswerFourCorrect, isAnswerFiveCorrect, isAnswerSixCorrect, isAnswerSevenCorrect, isAnswerEightCorrect].filter { $0 == true }.count
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
extension FirstQuizGameView {
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
    FirstQuizGameView(isShowQuizGame: .constant(false))
}
