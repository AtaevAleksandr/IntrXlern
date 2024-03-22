//
//  FifthInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct FifthInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Detailed View on Currency Pairs"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("What Is a Currency “Pair”?")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("All Forex entails exchanging one currency for another, and therefore, each Forex quote involves a pair of currencies. When you buy a bag of apples, you pay a specific sum of money for the bag, but when you buy a “bag” of a foreign currency, you are still paying a specific sum of money, but the thing you are buying is also money. The price of the bag of foreign money is quoted as a ratio of the money you are paying, or an exchange rate.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The euro exchange rate versus the US dollar might be, say, $1.3500. This means that for 1 euro you receive 1.35 US dollars. The yen exchange rate versus the dollar might be ¥105.00. This means that for 1 US dollar you receive 105 yen.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The euro versus the dollar is a pair, and the dollar versus the Japanese yen is another pair.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("A pair does not need to be dollar-based. The euro versus yen is also a pair, as would be the UK pound sterling versus yen.  Every single currency quote you see should name the two currencies in the pair. If you see just “euro,” you can assume the other half of the pair is the US dollar, although sometimes it pays to ensure that you are talking about the same pair as your counterparty.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Memorize the Three-Letter Abbreviations")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("You need to memorize the three-letter abbreviation for each currency that populates your workspace when you trade Forex.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("They are relatively easy to memorize since they usually refer directly to the first letter of the name in English, like the United States dollar (USD). As a general rule, the first two letters name the country, and the last letter names the currency.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Having memorized them will be useful if you ever start to trade cross-rates. Exceptions include the South African Rand, which starts with a Z instead of an S (from Dutch Zuid-Afrikaanse Rand). Sometimes, you can deduce logically what an exchange rate abbreviation should be (like NZD for New Zealand dollar), but other times, you just have to look up the symbol (TRY for Turkish lira and KRW for South Korean won). You might think the Swiss franc would be SWF, but it is not — it is CHF, the CH standing for the name of Switzerland in Latin, Confoederatio Helvetica.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("USD = US dollar")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("GBP = Great Britain pound")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("EUR = Euro")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("CHF = Swiss franc")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("JPY = Japanese yen")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("CAD = Canadian dollar")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("AUD = Australian dollar")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("NZD = New Zealand dollar")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("ZAR = South African rand")
                                }
                            }
                            .font(.system(size: 16))
                            .foregroundStyle(Color.theme.textGray)

                            Text("What Are the Most Commonly Traded Currency Pairs?")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("According to the Bank for International Settlement’s latest Triennial Central Bank Survey conducted in April 2022, the dollar, the euro, the yen, and the pound constituted the lion’s share of all spot transactions.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Of the $7.5 trillion traded in the currency market each day, $2.1 trillion was done in spot. Of that $2.1 trillion, $1.81 trillion was in dollars, $617 billion was in euros, $439 billion was in yen, and $232 billion was in sterling.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("This makes euro-US dollar (EUR/USD), US dollar-yen (USD/JPY), and sterling-US dollar (GBP/USD) the most commonly traded currency pairs.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The next three currencies, in terms of size traded in the spot market, are the Chinese yuan at $175 billion daily, the Australian dollar at $156 billion, and the Canadian dollar at $128 billion a day. US dollar versus Chinese yuan (USD/CNY), Aussie versus US dollar (AUD/USD), and loonie versus US greenback (USD/CAD) are the next most commonly traded currency pairs.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Cross Rate Pairs")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("As mentioned in the first lesson, cross rates have evolved to indicate a currency pair that has no US dollar component.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Euro-yen (EUR/JPY), sterling-yen (GBP/JPY), euro-Aussie (EUR/AUD), Aussie-Canada (AUD/CAD), Korean won-yen (KRW/JPY), etc. are all examples of cross rate pairs.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Because cross rates are less frequently traded, prices are often more volatile and have wider bid-ask spreads. Euro-yen is an exception to this rule, with a deep and liquid market.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Trading Lingo")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("It is important to know some lingo, or the special vocabulary used in the forex market. The most prominent nickname is cable, meaning the UK pound. The word cable refers to the transatlantic telegraph cable laid in 1858. At that time, the UK pound was the top currency for US traders, so to ask for a price in UK pounds, they would ask for the price of cable. At the time, traders who made the prices were called cable dealers, and even today, the person trading sterling at a bank is called the cable dealer.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The New Zealand dollar is called kiwi, for the kiwi bird that New Zealand is famous for, and the Canadian dollar is called the loonie because there is a picture of a loon (Canada’s national bird) on the back of the Canadian one-dollar coin.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Traders ask for a price in cable and know that this means a price for the UK pound sterling versus the US dollar. Similarly, a price in kiwi or the loonie would mean the price at which someone would buy or sell the New Zealand or Canadian dollars versus the US dollar.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The Norwegian krone is called the Nocky and the Swedish krone Stocky. Asking for a price in Nocky or Stocky would get you the price where someone would buy/sell US dollars versus the Norwegian krone or Swedish Krone. If you wanted a price in euro versus the Norwegian krone, you would ask for euro-Nocky. The Mexican peso would be Mex and the Hungarian forint Huf.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The language of foreign exchange is no different from other languages; there are rules and then exceptions to the rules.  Rather than ask for a price for the euro versus the US dollar, a trader will simply ask for a “euro” price. Similarly, an Aussie price would be a price of the Australian dollar versus the US dollar.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("To complicate matters further, the FX convention quotes most currency pairs in dollar terms. A trader will ask for dollar-yen when wanting the price of the US dollar versus the Japanese yen, or dollar-rand, when asking for the price of a US dollar versus the South African rand.")
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
                FifthQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension FifthInfoQuizView {
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
                introVM.completeQuiz(.init(id: 5, title: textTitle))
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
