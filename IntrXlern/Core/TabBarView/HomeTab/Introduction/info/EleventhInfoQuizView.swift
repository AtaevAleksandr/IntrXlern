//
//  EleventhInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct EleventhInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Margin and Leverage"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Margin refers to the amount of your own money you have to deposit with the broker in order to begin trading. Technically, margin comes in two flavors — initial margin, or the amount you first place in your account to begin trading, and maintenance margin, any additional money the broker requires you to add to keep the ratio of owned money and borrowed money at the correct proportion.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Hardly anyone puts down the full amount of the cost of a Forex contract, say $10,000 if you are trading minis. Let’s say your position goes against you but not enough to trigger your stop-loss. A good broker will notify you that you have X amount of time to top up your account with additional funds, usually before the end of the next business day and sometimes before noon. The broker’s telephone call to you is named a “margin call” and always means you have misjudged something. More on that later.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Nearly everyone in Forex trades on margin, and trading on margin is trading on borrowed money.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("In equities, the most leverage you can have is two times (1:2), meaning you can borrow 50% of the position you want to take. To buy something that costs $1,000, you need to put down an “initial margin” of half that, or $500.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("But in Forex, you can have 50 times leverage (1:50), meaning that for a starting capital amount of $500, you can trade a security whose current market price is 50 times that, or $25,000. That is the rule in the USA, instituted in 2010, with a maximum leverage of 20 times (1:20) in lesser-traded currencies, such as the USD/MXN (US dollar vs. Mexican peso), for example. Outside the USA, a broker may offer you leverage of 1:400, 1:500, and even more. 1:500 leverage, for example, means that for a starting capital amount of $500, you could buy as much as $250,000 worth of currencies.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The starting capital amount of $500 is your initial margin, and the rest, or $24,500, is borrowed at the ratio of 50 times. An initial margin is a form of collateral that the lender (the broker) takes from you as a “good faith” gesture. The Chicago Mercantile Exchange uses the somewhat old-fashioned language of “performance bond” to describe initial margin. The maintenance margin is the additional funding you have to make to keep the correct ratio between owned and borrowed money. The maintenance margin is determined by a procedure that starts with “marking the position to market” or MTM.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Marking to market is to value the end-of-day position at the closing price (or settlement price in the case of futures). Let’s say you bought one mini contract in the GBP/USD at 1.6000, and it has now closed down 40 points to 1.5960. Each point is worth $10, so you are down $400. Your broker calls you up and says that if you do not add funds to the account to maintain the minimum margin requirement, he will close out the position at the loss of $400, which you will still owe.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Clearly, you failed to place your stop at the right place to avoid this margin call. The Chicago Mercantile Exchange discloses its calculations for initial and maintenance margin on its website. The CME procedure is named SPAN, which stands for Standard Portfolio Analysis of Risk, and was developed in 1988. It is available to the public (since 1999) for $10, but you had better be skillful with spreadsheets if you want to use it yourself. The basic principle is that the exchange applies a volatility factor to each currency to determine the likelihood that an additional margin will be needed.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("In futures, the exchange dictates initial margins of varying amounts depending on the volatility of the currency. In retail spot Forex, brokers do not differentiate among the currencies in setting initial margins, but they borrowed the CME’s practices with respect to maintenance margin. How do retail spot brokers calculate initial and maintenance margins? Typically, they require a minimum margin plus a “cushion” because management of margin calls is administratively labor-intensive. For example, on a $1,000 lot, the initial margin could be the usual 2% for 1:50 leverage or $20, but the required additional cushion could be $20 for a low-volatility currency (CAD), $32 for a medium-volatility currency (EUR) or $38 for a high-volatility currency (UK pound). Many brokers also offer a margin tracker on their platforms so that you can get an alert when you are at risk of a margin call.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("It should be obvious that using maximum leverage is a surefire way to the poorhouse if you are holding a position that is vulnerable to being literally taken away from you by the broker if it goes against you by only a small amount. This is why most brokers advise against using maximum leverage — a random blip in the price can wipe you out.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Leverage magnifies gains and losses. It is important to understand quite how catastrophic losses can be.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Let’s say you start with $10,000 and lose 20% of your starting capital, or $2,000, on your first trade. Now, you have to make a gain of 25% to get back to your starting point. And you need to accomplish that 25% gain using a lesser starting capital amount, or $8,000. Now, using 1:50 leverage gets you control of $400,000 in face amount instead of the $500,000 you used to have. Let’s say you take another 20% loss, or $1,600. Now, you have to make 67% just to get back to your starting point. You can easily see that if your first 4-5 trades are losers, you are broke. The table below shows the gain needed to recover a loss.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Recovering a Loss")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Image(.quiz11Pic1)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 5))

                            Text("You need to ask yourself how likely it is that you will make a 100% gain after taking a 50% loss. Even if your grasp of probabilities is somewhat shaky, you need to acknowledge that the probability of making a single 100% gain is extremely low. Nearly zero, in fact.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("This is why beginning traders almost always lose money, or so market lore has it. Newcomers tend to lose more money on losing trades than they make on winning trades, and in the end, the gain needed to recover a loss is too high and not a realistic expectation. The important lesson is that the massive leverage allowed in the Forex market is extremely dangerous.")
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
                EleventhQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension EleventhInfoQuizView {
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
                introVM.completeQuiz(.init(id: 11, title: textTitle))
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
