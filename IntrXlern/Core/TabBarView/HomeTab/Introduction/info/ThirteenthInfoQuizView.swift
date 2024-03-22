//
//  ThirteenthInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct ThirteenthInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Demo Trading"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Just about every broker offers a demo trading account so that you can practice trading Forex before committing real money. If you have been studying the Forex market for a long time and believe you have a feel for the rhythm of the market, a demo account seems like a waste of time, especially if you miss an opportunity where you were 100% sure of the outcome and that outcome did, in fact, occur.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Brokers say you should practice on a demo account to:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("Avoid losing money on bad trades.")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("Avoid losing on badly placed trades.")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("Learn their software.")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("Learn how to reconcile your trades for accounting and tax purposes.")
                                }
                            }
                            .font(.system(size: 16))
                            .foregroundStyle(Color.theme.textGray)

                            Text("Before choosing a broker, you should look at several because they each feature one aspect or another. What is more important to you — the chart, the quotes, the news, information on your existing trades, or your account balance? Some brokerage platforms are really complicated and would take hours and hours of practice for you to become comfortable using them (TD Ameritrade Think or Swim, for example — a thing of beauty but terribly complex).")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The real reason to practice trading before you commit any capital is to go on an honest journey of self-discovery. Not everyone really wants to do this. You may find out that you have an itchy trigger finger and a preference for making impulsive trades or that you suffer from ”analysis paralysis” — you become overwhelmed by conflicting chart interpretations and news analysis and cannot make any trades at all.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Those are two extremes. The most frequently discovered self-knowledge is that you do not have a trading system that incorporates money management rules.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Keep in mind that the only reason to trade is to make a profit. It is not to prove that your theories about the universe are correct. To make a profit, you need a consistent, systematic set of trading rules that you follow in a disciplined manner and that are designed upfront to generate more profit than losses.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Slippage")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("The demo account has a really big advantage over back-testing — you can see live, real-time slippage. Slippage refers to the difference between the price you seek to enter or exit and the actual price available in the market.  Let’s say you choose to enter on open, and the open is 1.4000. In a back-test, the software will take that number as the actual entry. Nevertheless, in real trading, you may get filled at 1.4004. Those four points may seem minor on any single trade, but now consider that your stop may get hit at another four points worse than your order. Now you have “lost” eight points. A key issue in turbulent markets can be the price jumping over your stop, and you get filled at 30 points under your stop. Now, you have lost 34 points.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("This is why back-tested results are always better than actual or demo-trading results. Do not blame the system vendor — it is the nature of the beast and an inevitable part of the process. When you see a hypothetical track record of a trading system from a vendor, you need to check how much slippage would have reduced total profitability. At a guess, slippage cuts 10-20% from the reported P&L. The system may still be a valuable one and worth your consideration — just be realistic about your expectations. If the system has delivered 40% returns, you should expect the real percentage gain you will get would always be less than 40%.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The Past Is Not the Future")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("Whether you build or buy a trading system, be aware that the profitability you see in the past will not be the profitability you see going forward. This is because market conditions change faster than system adaptability. A trading system that relies on trendedness will do badly in a range-trading market, and a system that does well in range-trading conditions will not do as well as a trending system in a trending market. One of the biggest challenges in technical system-building, if not the biggest, is differentiating between trending and range trading. Every software-based trading system is based on one or the other condition, and those that try to do both almost always have a strong component of human judgment injected, called “discretion.”")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Expert advisors do not always disclose in clear language what approach they are taking, whether trend-following or range-trading. By using a demo account, you can figure it out for yourself.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The Acid Test — Audit Your Results")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("Whether you buy or build a trading system, you need to know whether your stop-loss and profit targets deliver your desired gain/loss ratios. The only way to know this is with a live account, and demo accounts are a good way to get the information. Say, for example, you always set your stop at 25 points and your target at 45 points. These points reflect the dollar amount of loss you can tolerate and the amount of gain you are seeking, given the loss.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Your audit should measure for at least 50 trades (and 100 trades would be better):")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            VStack(alignment: .leading, spacing: 7) {
                                Text("1. Gain/loss ratio in terms of number of trades")
                                Text("2. Gain/loss ratio in terms of dollar gain/loss")
                            }
                            .font(.system(size: 16))
                            .foregroundStyle(Color.theme.textGray)

                            Text("Most people stop at this point. However, you should aim to refine your stops and targets systematically. You should test whether either ratio would be improved by changing the stop to 20 or 30 points or by changing the target to 40 or 50 points. Remember, though, that if you are reducing or enlarging one or the other or both, you are assuming that the conditions you had during the sample period of the 50 or 100 trades will persist into the future. Enlarging a profit target means you had a wider average daily range than you had assumed when you set the target in the first place, and if you keep it enlarged in the upcoming period, you have reason to believe the wider range will persist.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            HStack {
                                Button {
                                    startGame.toggle()
                                } label: {
                                    Text("Go Quiz")
                                        .font(.system(size: 16, weight: .semibold))
                                        .foregroundStyle(.white)
                                        .frame(height: 45)
                                        .frame(maxWidth: .infinity)
                                        .background(Color.theme.customPurple)
                                        .cornerRadius(12)
                                        .animation(nil, value: UUID())
                                }

                                Button {
                                    withAnimation(.spring()) {
                                        proxyReader.scrollTo("SCROLL_TO_TOP", anchor: .top)
                                    }
                                } label: {
                                    Image(systemName: "chevron.up")
                                        .font(.system(size: 16, weight: .semibold))
                                        .foregroundStyle(.white)
                                        .frame(width: 45, height: 45)
                                        .background(Color.theme.customPurple)
                                        .cornerRadius(12)
                                        .animation(nil, value: UUID())
                                }
                            }
                            .padding(.top, 30)
                        }
                        .padding()
                        .id("SCROLL_TO_TOP")
                        .overlay (
                            GeometryReader { proxy -> Color in

                                DispatchQueue.main.async {
                                    if startOffset == 0 {
                                        self.startOffset = proxy.frame(in: .global).minY
                                    }

                                    let offset = proxy.frame(in: .global).minY
                                    self.scrollViewOffset = offset - self.startOffset
                                }

                                return Color.clear
                            }
                            .frame(width: 0, height: 0)
                            , alignment: .top
                        )
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                title
                dismissButton
            }
            .fullScreenCover(isPresented: $startGame) {
                ThirteenthQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension ThirteenthInfoQuizView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text(textTitle)
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.white)
        }
    }

    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                dismiss()
                introVM.completeQuiz(.init(id: 13, title: textTitle))
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

