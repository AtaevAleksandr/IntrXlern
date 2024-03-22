//
//  FourthInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct FourthInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Word of Warning to Forex Traders"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("You see advertisements that Forex trading is a popular new thing and better than trading equities because you can get much higher leverage. In equities, maximum leverage is 1:2, meaning you can borrow 50% of the price of the position. For a security that costs $1,000, you need to put down an “initial margin” of half that, or $500.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("But in Forex, you can have 1:50 leverage, or more if you live outside of the US, meaning that for a starting capital amount of $500, you can trade a security whose current market price is 50 times that, or $25,000. That’s the rule in the US, instituted in 2010, with a maximum leverage of 20 times in the lesser-traded currencies (such as the dollar/Mexican peso). Outside the US, a broker may offer you leverage of 1:100, 1:500, or even higher, meaning that for a starting capital amount of $500, you could buy as much as $250,000 worth of currencies.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Every person who starts out in Forex does this calculation or something like it: Let me assume that I can make 20 points per day per lot for 240 trading days, and I trade 10 lots each day. That is 20 x 10 x 240 = 48,000 points at about $10 per point = $480,000. Golly, I can make nearly half a million dollars by trading! Even if my losses are 50%, that is still a $240,000 net gain. And I would be making that gain on an initial “down payment” of only $10,000 leveraged 50 times = $500,000.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Moreover, that is assuming I keep the initial amount at $10,000 without reinvesting gains to increase the amount traded from 10 lots to a higher number. For example, after I have doubled my money from $10,000 to $20,000, now I can trade 20 lots instead of 10. If I double the stakes, I double the profit (this is named a Martingale strategy, by the way).")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("How realistic is this scenario? Not realistic at all. If gains like these were easily attainable, the world would be full of rich Forex traders. Instead, we see case after case of the person who may make some early big profits but then loses most or all of the gains and has to start over. We hear of traders spending years and decades trading Forex but barely making a living. What is going wrong?")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            VStack(alignment: .leading, spacing: 5) {
                                Text("1. The first problem lies in not being able to fine-tune your analysis so that it is immediately relevant to the exact trade you want to take next. You may know from both fundamental and technical analysis that the euro is on an upswing, but your trade long is a loser because your stop gets hit on an aberrant price spike. There is no solution to this problem. Your analysis can be brilliant and absolutely correct, and still, some or many of your trades are losers. In other words, you can be right and still take losses. Neither fundamental nor technical analysis is precise, but trade orders need to be precise — enter at X and exit either at Y for a gain or at Z for a loss.")
                                Text("2. The second problem is that your money management may not match up well with the currency you are trading. Let’s say you can afford to take a loss of only 10 points, but your currency typically trades in an average range of 50 points in the timeframe you are trading, say 240 minutes or four hours, a popular timeframe. To halt an excessive number of stops getting hit, you need to save up more capital to be able to afford a wider stop, or switch currencies to another one that varies by less than 50 points over your chosen timeframe, or reduce your timeframe.")
                                Text("3. Most traders accumulate too much loss because even if they have more winning trades than losing trades, they win less on winning trades than they lose on losing trades. From a money management point of view, it is always better to have a dollar win-loss ratio that is at least 1.1 to 1 (meaning you make $1.10 for every $1 lost). Ambitious people aim for 3 to 1 ($3 won for every $1 lost) or more, but this is very hard to hit.")
                                Text("4. All this boils down to not having a trading system that blends both technical trading rules with money management rules, named a trading plan. This is not the work of a single day, or week, or even year.")
                                Text("5. Let’s say that you spend the time to create a trading system that blends technical rules and money management rules. Can you count on it to deliver the same gain-loss ratio over a long period of time? No. Markets change. You will need to adapt your trading system to changing conditions.")
                                Text("6. Let’s say you have a system, and you are able to keep adapting it. Do you have the self-discipline to execute it to the letter? Sloppy execution will ruin even the best system. Fail to take a trade or two on a hunch or take an extra trade or two on an impulse, and you are no longer trading your system.")
                                Text("7. So why not buy somebody else’s expert trading system? After all, let’s say the track record shows a gain/loss ratio of 3 to 1. The answer is that the expert may have made 90% of the gain on a handful of trades over the course of a year, and 90% of the trades were losers. Ask yourself if you would be able to keep trading when 9 of 10 trades are losers. Or perhaps this particular system requires making a dozen in-and-out trades every day — but you have a day job.")
                            }
                            .font(.system(size: 16))
                            .foregroundStyle(Color.theme.textGray)

                            Text("Appreciation of risk is more than P&L arithmetic — it affects your emotions and sense of self-worth, too. Take too much risk, and you burn out. Take too little, and you fumble along, never making any serious money. The problem is that “too much risk” is a personal thing, and no other person on the planet has your exact risk appetite.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("A focus on high-leverage Forex can also put your overall portfolio management out of whack. Say you have $250,000 in long-term savings, and all of it is invested in a money market fund, a mutual fund or two, and equities (with no leverage). Now ,you add a Forex account, and you fund it with a relatively modest $10,000, but you leverage it 50 times for a total exposure of $500,000. Your total market exposure is $750,000, and two-thirds of it is leveraged. This is disproportionate. If you lose 50% on your Forex account, that is $250,000 or all of your savings. As noted above, you would need to make 100% on the remaining amount in your Forex account to get back to your starting point, and that is unlikely. By adding Forex to your portfolio, you have ruined the entire portfolio.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The solution is to add a percentage of your total portfolio to the speculative account, not a multiple, say 10%. In other words, if you have $250,000 in your portfolio today, the face amount you will risk in Forex is 10% or $25,000. If you want to allocate $10,000 to Forex trading, that will put your leverage at a far saner and more reasonable 2.5 times.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("A little voice will nag at you every time you make a gain. Let’s say you gained 20 points on a single lot, or about $200. Your rate of return is $200/$10,000 = 2%. This is better than you can get in a savings account, but if you had used all the leverage available to you in Forex, you would have had 10 lots and made $2,000. Now, the rate of return is 20%, and that kind of wonderful gain is why you got into active speculative trading in the first place. You will be tempted to listen to the little voice.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Listen instead to the big voice of optimum portfolio management — do not speculate with more than 10% of your investment capital.")
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
                FourthQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension FourthInfoQuizView {
    private var title: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Text(textTitle)
                .font(adaptiveFontSize())
                .foregroundStyle(.white)
                .minimumScaleFactor(0.5)
        }
    }

    private var dismissButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {
                dismiss()
                introVM.completeQuiz(.init(id: 4, title: textTitle))
            } label: {
                Image(systemName: "xmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 15, height: 15)
                    .foregroundStyle(.white)
            }
        }
    }

    private func adaptiveFontSize() -> Font {
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        let screenSize = min(screenWidth, screenHeight)

        if screenSize < 350 {
            return .system(size: 16, weight: .bold)
        } else if screenSize < 380 {
            return .system(size: 20, weight: .bold)
        } else {
            return .system(size: 24, weight: .bold)
        }
    }
}
