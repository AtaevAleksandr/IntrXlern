//
//  TwelfthInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct TwelfthInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Trading Orders"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Some Forex trading advisors will tell you that it is always best to follow the KISS approach (“keep it simple, stupid”). By this, they mean you would always buy “at the market” and sell “at the market.” That is called a market order, and to be sure, it is the easiest way to place orders.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The problem with a market order is that at the same time, you are placing the trade that opens a position, you should also be placing the contingency orders that close the trade, either a take-profit order or a stop-loss order. Unless you can sit in front of your screen all the time — which is tedious and not a good use of time — you need to learn the other forms of trading orders.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Market Order")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("As noted above, a market order is one that you place with a click, knowing perfectly well that you may not get “filled” at exactly the price you just saw two seconds ago on the screen. When you are placing a market order, you don’t care about minor slippage like this. Slippage goes both ways — it can also be in your favor — but negative slippage is what you will see 90% of the time, and it can become quite expensive. Why is slippage usually negative? Two reasons — the market is already moving in the direction you want it to go, and a preponderance of traders is also either buying or selling at the same time. The other reason is that the broker’s computer is programmed to take an extra pip or fraction of a pip when activity is high.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Limit Order")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("The limit order is an order to either buy at some lower price or sell at some higher price. The limit order eliminates slippage because you specify the exact rate you want when you place the order. Or rather, it should. But if you are entering a large order, you could be only partially filled at your desired level, and in order to get the full size you wanted, you would have to step in and buy or sell at the market manually to get the amount you want. By that time, of course, the rate you want is long gone. Now, you have to calculate the average entry from your original limit order plus the top-up order, and that can get messy.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The more common issue with limit orders is that you are trying to define the worst price you are willing to take — and it may not appear. You do not get filled — and yet you saw your limit order price on the screen. Before screaming that you have been cheated, consider that brokers fill orders on a first-come, first-served basis. If other traders had the same idea and the same limit order but placed their orders before you did, they got filled, and you didn’t. This is sometimes called the “queue problem”, and broker customer support staff spend a lot of time explaining it to newcomers.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Limit orders are particularly useful when you see a tendency on the very short-term chart (like the 15-minute) for a currency to pull back from an up move, as they often do at the end of the trading session when day traders are taking profits and getting out, and position traders are paring back. The end-of-session dip is temporary, but let’s say it’s essential to your trading plan — because you can divine the high of the next trading session using technical indicators. In other words, you can see where the currency “should” go once the up move resumes in the next trading session, but the current price doesn’t offer a sufficient number profit points. Therefore, you want to capture a slightly lower price for your entry. As long as you are not greedy and are willing to cancel the limit order and go with a market order if you don’t get filled, this is a perfectly acceptable use of the limit order.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("This application of the limit order also makes the important point that you don’t have to take any trade. You are the master of your own trade. A limit order allows you to determine entry and exit to try to meet your risk-reward goals. But, as noted, you might not get filled, and so you may need to do a certain amount of screen-watching, anyway.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Stop Order")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("Just as a limit order is “XYZ price or better,” a stop order is “XYZ or worse.” When you are a buyer, you would specify “I buy GBP/USD at 1.6500 stop,” meaning the price is now under that, like 1.6485, and you don’t want to miss a breakout if it hits the round number on the upside. If the price does indeed go to 1.6500, the stop order becomes a market order, and remember the key characteristic of market orders — they are subject to slippage. Your fill could be higher than 1.6500.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("When you place a “sell stop,” it’s the same arrangement in reverse. When your stop is hit, the stop order becomes a regular market order, and you are vulnerable to slippage.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Stop Limit Order")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("Not every broker offers the stop limit order. This is a combination of the stop order and the limit order and can become a valuable tool. First, when your named stop is met and exceeded, the order turns into a limit order. When the limit is met, it turns into a market order.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("In Forex, a persistent problem is brokers filling your stop order limit order at levels far away from the numbers you specified because of gapping. Many Forex prices exhibit gapping on important announcements, like US payrolls and central bank decisions. You can get filled far away from your desired stop wishes.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Stop-Loss Order")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("All brokers offer a stop-loss order, whatever they may name it. Technically, a stop order can be used to stop a loss or to name a profit target, and ideally, you will place both orders every single time you place a trade. This cannot be emphasized enough. If you do not use a stop-loss order, it’s not a question of whether you will go broke, but rather when. This is because your electricity may go out, your PC may fail, or your courage may desert you in favor of wishful thinking as you see your trade go against you but cannot pull the trigger to exit. When your stop has been placed already, you are saved from these outcomes. This is such an important point that many brokers now shove a little entry box at you labeled “stop-loss order.” They are trying to get you to make the stop-loss order an automatic order, which protects them against you as well as protecting you against yourself.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Trailing stops are a subset of regular stops. As a rule, the trader will adjust the stop periodically to capture an increasing share of a move when the price is going his way. It is critical for a trailing stop (automatic or manual) to move only in the positive profit direction – you never move stop-loss back with a trailing stop.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("OCO (One Cancels Other) Order")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("Not all brokers offer OCO orders, but they can be useful when you know a price move is coming but you are unsure in what direction. An OCO order always comes in pairs and can be either a stop or a limit order. If you are using the stop version, you would typically specify that if a lower level is met, you are a seller at that level, and the accompanying buy-stop part of the order is automatically canceled upon the sell order getting filled. The limit order version usually has you going short at the higher price and long at the lower price, with the other order automatically canceled if one gets filled. You can achieve the same outcome by placing two separate orders yourself as long as you remember to cancel the other yourself, too.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("If you are using a trading plan that has specific stops and targets, you need to find a broker that allows you to place both orders as either stop or limit orders and OCO. In the absence of OCO, let’s say you are long GBP/USD. Your stop is hit while you are sleeping — but then the currency reverses direction, and now your upside target is hit, too. Now, instead of being square, as you intended, you are short! Some prominent platforms do not offer OCO, and some sophisticated platforms offer it but are overly complicated.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Expiration of Orders")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("With the exception of OCO orders, where one cancels the other, orders may be “good until canceled” or they may be good for some period: e.g., for the current trading session only or until some specific date. You need to confirm from your broker which expiration version they are using. Most brokers will use “good until canceled,” but you should verify the policy. Let’s say you place a stop at 1.6000 under a purchase of GBP/USD at 1.6100 during the Asian session. A few days go by. The stop gets hit two days later in the European session, but the broker fails to execute on your behalf because your stop expired under that broker’s operating procedures at the end of the session during which you placed it.")
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
                TwelfthQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension TwelfthInfoQuizView {
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
                introVM.completeQuiz(.init(id: 12, title: textTitle))
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
