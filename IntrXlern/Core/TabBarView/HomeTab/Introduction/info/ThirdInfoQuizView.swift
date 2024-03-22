//
//  ThirdInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct ThirdInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Why Trade Forex?"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Every article and website on Forex will point out that Forex is a splendid trading vehicle. Here are some of the reasons given. Some are true and useful, and some are untrue or silly.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            VStack(alignment: .leading, spacing: 7) {
                                Text("1. Glamor: Forex is glamorous and sophisticated — the very pinnacle of international high finance.")
                                Text("2. Size and liquidity: Forex is the biggest single market in the world and offers high liquidity — you won’t get stuck with no bids or too wide a bid-offer spread as in thinly traded issues.")
                                Text("3. 24-hour trading: When you have a day job, it is nice to have your market open in the evenings and even late Sunday. Something is always being actively traded in Forex.")
                                Text("4. Easy account opening: You can open a trading account with a Forex broker far more easily than with an equity or commodities broker, with far less money, and by disclosing a lot less information about your financial condition. Some brokers let you open an account with a few hundred dollars that you can put on a credit card and start trading the same day.")
                                Text("5. Free platform: Brokers offer very good trading platforms that have relevant data and technical tools for free. Many regular equity and commodity brokers charge for data and charting.")
                                Text("6. No commissions: In spot retail, you do not pay a commission, just the bid-offer spread. In regular equity and commodities trading, commissions can consume 20-40% of your profits, depending on your gain/loss ratio.")
                            }
                            .font(.system(size: 16))
                            .foregroundStyle(Color.theme.textGray)

                            Text("These all sound like good reasons to trade Forex. However, almost everything on this list above is either untrue or not useless.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Glamor: give yourself a break. Securities prices trade for the same reasons and in the same patterns, whether they are Apple shares, soybeans, or the Swiss franc. Trading skills, which are really money management and risk management skills, are the same whatever the asset class. There is nothing inherently more “sophisticated” about trading dollar/yen than trading Sony. In fact, trading dollar/yen is more complicated than trading Sony shares, if only because you have two economies to track, not to mention risk factors that do not affect equities, like territorial disputes, oil prices, and other things. Studying the fundamentals of Sony and its markets is no mean task in its own right, but FX fundamentals are broader and deeper. Do not confuse complexity with sophistication.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Size and liquidity: while it’s true that if you are trading the pink sheets (over-the-counter equities that are unlisted on a primary exchange), you will probably run into liquidity problems, but the world is chock-full of securities that have liquidity that is more than adequate for your account management. How much liquidity do you need, anyway? If you were trading equities, you might want to scan the universe for names that traded a minimum of 100,000 shares per day. You would get a list in the US alone of hundreds of names. The oil futures contract trades over $1 billion per day.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("As for 24-hour trading, plenty of commodities trade on the electronic exchange GLOBEX, which is nearly 24 hours per day, and after-hours equity trading on the NY Stock Exchange and NASDAQ has been around since 1998. Besides, if you know what entry you want and its associated stop and price target, what do you care about when, exactly, it gets executed? Do you really want to watch the screen for hours on end?")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("This brings up another issue — let’s say you are in the Western Hemisphere timezone and have a day job. You want to trade the early Asia market that starts in New Zealand and moves to Tokyo, Singapore, and Hong Kong. Unless you are trading what is for them a local currency (NZD, AUD, SGD, yen), liquidity is not that high. More to the point, trading action tends to be rangey and sideways. We hardly ever get a breakout move (except in the local currencies) in that time period. We see a similar lull during the transition period from Hong Kong to Frankfurt. Middle East trading may offer plenty of liquidity, but it hardly ever offers big moves that the savvy trader wants to exploit.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("As for easy account opening, brokers make it easy for you to open the account because it is easy money for them. The probability of your making high profits from your first trade onward is practically zero. All traders take losses, and you will, too — it is the nature of the beast. As soon as you take a loss, the broker wants you to add more money so you can continue trading. Stories abound in the chart rooms about traders who did make gains with these brokers but could not withdraw their funds.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Even after the US government raised capital and registration requirements — making US residents off-limits to most foreign brokers — plenty of fly-by-night retail Forex brokers remain. We have central clearing in the primary interbank FX market but no central clearing for retail spot Forex.  Most governments do not even try to regulate the retail market. Retail brokers have many tricks to cheat the customer. Probably the most common one is that they do not even place your trade. They know you have a low capital amount, and your stop is (say) 10 points. They are willing to bet that your stop will get hit, and they will not have to cover the trade from their side. If your target is hit instead, they may say your stop got hit anyway, even though you don’t find that price anywhere on a database of prices for the day. This is one of the benefits of futures trading, by the way, compared to spot. The Chicago Mercantile Exchange posts “time and sales” for every blessed trade done, and you can prove whether a stop or target was hit. Such proof stands up in a court of law, too.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("This brings up the no-commission “benefit.” Be sensible here — how does the broker make any money if he does not charge a commission? By adding a spread of 2-5 pips to your cost and subtracting it from your closing price. Let’s say you are trading a standard retail amount of $100,000 and paying 3 pips, or $30. The price has to move 3 pips for you to break even and another 3 to stay even on the exit. You need to make 7 pips minimum to start making a net gain.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Now, we must ask the essential question — how much do you intend to make on a $100,000 trade? If you want to day-trade three times per day and your profit target is 20 pips with a stop at 10 pips, you are aiming to make 3 x 20 = 60 pips possible gain or $60/100,000 = 0.06%. If you can do that every day with no losses, on 240 trading days per year, you would make $14,400/100,000 = 14.4%. Okay, now consider that to keep the 20 points, you actually have to make 23 points because you are paying the broker 3 of them.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("What is the average daily range of your currency and how big a piece of it is 23 points?")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Let’s say your currency is the AUD and it has an average daily range of 80-100 points (actual readings for January-May 2016). You would be seeking to get 23-33% of the daily range in the right direction every day. Ask yourself how realistic that is.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("To add another dose of reality, consider that you may trade profitably only 51% of the time. In other words, your stop is hit a little less than half the time. You are losing 10 points per trade on about 380 trades per year or $3,600, against a gain of $7,200 for a net gain of roughly $3,600. On a face amount of $100,000, that’s 3.6%. Since you are using leverage and not actually putting up the full $100,000, your percentage return is considerably higher, of course. Nevertheless, it is a great deal of work — trading three times per day, every day, and keeping losses to 49%, for a net gain of only $3,600 per year.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Suppose you are a swing trader and put on one position that you hold for several days or even weeks. In that case, you are avoiding paying 3 points on every trade, but you have a new expense — the cost of rolling over the contract every day. We will come back to that in another section. For the moment, consider that to make the same $3,600 as the day trader who trades three times per day, you would have to get (say) 36 points but only ten times over the course of the year, net of losses. Because Forex prices are trending, this is actually not that hard to achieve.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The broker being paid with spread points has an important implication for your choice of trading strategies — it is more cost-effective to be a swing trader than a day trader.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("However, let’s be honest – the real reason that people want to trade Forex is leverage. Leverage is a blessing and a curse.  You are, in essence, borrowing most of the face amount of the $100,000. In some places, you can borrow virtually all of it, but in the USA, leverage is limited to 50 times since October 2010. That means if you want to trade one lot worth $100,000, you need to put down $2,000 as your initial margin ($100,000 divided by 50).  If your first trade goes against you and you take a loss, you have to top it up with more money. In practice, your first trade should be backed by the $2,000 required under the regulations, plus the amount you could lose if your stop is hit (plus maybe a little extra), or at least $2,500.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("But the point here is not how much you should fund your first account — it’s why the broker is willing to lend you $97,500 interest-free in the first place.  The first reason is that the broker expects you to fail. He expects that more than half your trades will be stopped, and they will be stopped right away at the beginning of your trading career. The broker may not have placed your trade onward with a counterparty in the first place, so if your loss was (say) $250, he gets to keep all of it. Some brokers have been accused of “hunting stops” in their own accounts specifically to hit the stops of small traders. If you believe that you have been stopped out incorrectly, you can contact the broker to try to resolve the issue or, if that fails, contact the government regulator - but only if the broker is regulated. That is why it is generally a good idea to trade only with regulated brokers.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The second reason he is lending you this huge amount of money interest-free is that he is earning 3 points per lot per side, or roughly $6 per round turn. On the three trades per day described above, that is $4,320, or 4.43% on $97,500. Since the broker can borrow the $97,500 at a rate less than 4.43%, he gets to keep the difference. But in practice, he usually doesn’t need to borrow the $97,000 at all in the first place — the broker is being extended credit-free or very cheaply by the banks and brokers where he is passing on your trades. In essence, they give the broker free or cheap credit to drive volume to their trading desks. Bottom line, the broker is motivated to get and to keep your trading business, and the more day-trading you do, the better he likes it because of that $3 per side profit he is making.")
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
                ThirdQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension ThirdInfoQuizView {
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
                introVM.completeQuiz(.init(id: 3, title: textTitle))
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

//#Preview {
//    ThirdInfoQuizView(isStartQuiz: .constant(false))
//        .environmentObject(QuizArchiveViewModel())
//}
