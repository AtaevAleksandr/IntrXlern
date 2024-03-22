//
//  EighthInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct EighthInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "How Is Money Made in Forex?"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Money is made in Forex trading by either the currency bought going up in price or the currency sold going down in price. In practice, it does not matter whether you are buying EUR/USD because you think upcoming data will favor the EUR or selling the USD and using the EUR as the vehicle because you think developments will reduce support for the dollar. You may choose the EUR as the vehicle because it has high liquidity, but you could equally well express your negative view on the USD by buying (say) NZD/USD, which means, by definition, you are selling the USD.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Forex trading is a zero-sum game in which one party wins and the other party loses. If you buy the AUD/USD at 0.8500 and sell it at 0.8700, you have made 200 pips. The person who sold to you at 0.8500 has an opportunity loss equaling those 200 pips. It is conceivable that the seller is not unhappy because perhaps he bought when the AUD was at 0.8300, and so he made a cash profit of 200 pips himself, but the fact remains that if he had held the position, he would be 200 points richer, and not you.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("We can also note that the seller may have been closing a hedging position. Let’s say the hedger had a debt or was short an asset denominated in euros and had bought the euros as a hedge of the currency part of the asset position. If the asset rose (giving him a loss on the asset) but the euro fell, the hedger would get some gain to offset the loss on the underlying asset. Once he had closed out the asset position, he had no more need for the currency position. In practice, hedging positions are held for far longer (and in far greater amounts) than the usual retail Forex trade, although the underlying asset in the hedging case may have been another short-term currency position, including an option.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Similarly, if the AUD keeps rising after you sell it at 0.8700 to (say) 0.8900, you are the one with the opportunity loss. It is not a true cash loss but can cause distress all the same. Trading coaches warn against crying over spilled milk — opportunity losses. They advise never to dwell on what you “could have” done. This is named in the vernacular “woulda, coulda, shoulda.”")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("If you sell first and buy back later, you are technically shorting the first-named currency in any pair — but you are buying the second-named in the pair. Say you sell the USD/CAD at 1.0950 and buy it back later at 1.0900. You have a gain of 50 pips from selling US dollars and buying Canadian dollars. But nobody will vilify you for shorting the US dollar because, for all they know, you were simply buying Canadian dollars because you like Canada and paying for the CAD using US dollars.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("You can make as much money with a shorting strategy as by going long, although many people find it easier on the eye to project a price trend upward than downward. In general, the stigma attached to short selling is not present in trading Forex. This is one of the great virtues of Forex trading over other asset classes. It is still “going short” some currency but also at the same time going long some other currency and does not carry the same negative connotations as shorting equities or commodities. When you short a stock, it’s because you think there is something wrong with the company or, at the least, that the market has overpriced it. Short-sellers are reviled as “destructive” forces in the equity market, and short-selling is banned from time to time during crisis situations, as during the banking crisis starting in 2008. Just about every major country instituted bank short-selling bans, including the US, UK, Australia, and most European countries. Equity short-sellers get blamed for everything from the Crash of 1929 to the Crash of 1987, even when it is clear that plenty of other factors contributed.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("In equities, to go long is to be hopeful and optimistic that that economic and financial conditions will favor growth generally and corporate profits specifically. Companies will be well-managed, profits will rise, and price-equity ratios will rise, too. There is a distinct long-side bias in equity trading. Not so in Forex, although we do have an anti-USD bias that has persisted for many decades for structural reasons. And yet, it is not safe to always choose to buy currencies while selling USD. We see plenty of occasions when the USD rallies across the board. As a general rule, the best way to gauge overall USD sentiment is to look at the dollar index (USDX). From the end of September 2022 to the beginning of February 2023, for example, the dollar index was in a falling trend, reaching the lowest point on February 2, 2023:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Image(.quiz8Pic1)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 5))

                            Text("We see many occasions when a currency goes into an easily identifiable trend, and we can also identify the reasons why traders are favoring (or trashing) the currency. The AUD, for example, has had a lasting 10-year yield advantage over other developed country 10-year notes. As a consequence, we see an upward bias in the AUD against lower-yielding currencies, especially the Japanese yen but also the USD. However, this does not mean that bad data about the Australian economy, or jawboning the AUD down by the central bank or treasury, will not trigger a sudden drop in the AUD.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Sterling has a distinct personality, too, especially against the USD. When the prospects for the UK are brighter than elsewhere, the pound rises. But the London traders who specialize in the pound are also famous for “gunning for sterling” when the outlook dims. This makes up moves a struggle and corrections and down moves particularly vicious.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("These examples point out that it is the suddenness of changes in the Forex market that makes trading so difficult and leads traders to trade on a short-term basis of a few hours when overall Forex trendedness would call for a longer-term holding period.")
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
                EighthQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension EighthInfoQuizView {
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
                introVM.completeQuiz(.init(id: 8, title: textTitle))
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
