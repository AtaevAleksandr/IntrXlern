//
//  NinthInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct NinthInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Pips"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("A pip is the smallest unit that can be traded in Forex. The word comes from the British word for a small seed in a fruit like an orange, although you will also see pip defined as “percentage in point” since a pip is equal to 1/100th of 1 percent.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Technically, the smallest tradable unit in futures is named a “tick” and in equities a “point,” but in practice, many professional Forex traders do not say “pips” but rather “points.” You can always spot a real beginner when he uses the phrase “basis points” instead of points or pips. Basis points refer to interest-rate securities, not to Forex. The use of the word pips came back into vogue in the late 90s when retail spot Forex trading started to become widespread.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Forex rates classically are calibrated to the fourth decimal place, so a quote for EUR/USD might be 1.3801. That last digit 1 is one pip. During the early 2000s, brokers started making quotes using the fractional pip, or a fifth digit past the decimal point, like 1.38015. A fractional pip (also called a pipette) is a tenth of a pip. Brokers advertised fractional pips as allowing the trader to get a tighter bid-ask spread and to take advantage of smaller price moves, but fractional pips also lured traders with only tiny amounts of trading capital into the market and facilitated high-speed algo traders. Do enough profitable trades, making only one fractional pip, and soon you are talking about some real money. Another high-speed user of the fractional pip is the spread bettor.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("What Is a Pip Worth?")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("A pip’s value depends entirely on which quotation methodology is in force. In currencies that are quoted in the American quotation convention, like the euro/dollar, each pip is worth $10 in the standard contract, and each fractional pip is worth $1. In the mini contract, each pip is worth $1, and each fractional pip is worth 10 cents. The other major currencies quoted this way are the GBP, CAD, AUD, and NZD.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("When the quotation convention is the European convention, as in USD/CHF, USD/JPY, and others, the value of one pip is denominated in the second currency. So, one pip in USD/CHF is worth CHF 10, and to translate that into dollar terms, you need to use the exchange rate that was applicable when the trade was closed.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("For example, say you bought the mini GBP/USD at 1.6556 and sold it at 1.6586 for a gain of 30 points or pips. Your spreadsheet would use the following formula:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Image(.quiz9Pic1)
                                .resizable()
                                .scaledToFit()
                                .padding(5)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 5))

                            Text("In other words, each pip is worth $1 in the mini contract ($10,000), and the calculation is easy — you made $30.00. If you were trading the $100,000-size contract, your gain would obviously be ten times bigger.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("If your trade is in the USD/CHF, however, points gained or lost are denominated in Swiss francs, and if you are keeping track of the P&L in dollar terms, you need to translate the Swiss franc to dollars. Let’s say you bought a mini contract of USD/CHF at 0.8910 and sold it for 0.8940 for a gain of 30 points.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("In this case, your spreadsheet formula is:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Image(.quiz9Pic2)
                                .resizable()
                                .scaledToFit()
                                .padding(5)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 5))

                            Text("The Japanese yen is an exception to the 4 or 5-decimal place convention and traditionally uses 2 digits past the decimal point, increased by one digit for the fractional pip. If the dollar/yen is trading at 103.985, the pip is the 8, and the 5 is the fractional pip. The gain/loss calculation is only a little different from the calculation for the Swiss franc to account for the different size in the numbers. Let’s say you bought a mini contract of USD/JPY at 103.85 and sold it at 104.15 for a gain of 30 pips. Your spreadsheet formula is:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Image(.quiz9Pic3)
                                .resizable()
                                .scaledToFit()
                                .padding(5)
                                .background(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 5))

                            Text("As a rule, if you are trading the standard contract, one pip is worth roughly — very roughly – $10, and if you are trading the mini contract, each pip is worth roughly $1. Nevertheless, do not be careless about keeping track of the pennies. As just demonstrated, 30 points in the Swiss franc is $3.56 more than $30, and in the yen, it is $1.20 less.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Exotic Currency Pips")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("Exotic currencies include the South African rand (ZAR), Mexican peso (MXN), the Hong Kong dollar (HKD), the Nordic currencies (Swedish krona, SEK, Norwegian krone, NOK, and Danish krone, DKK) as well as slew of emerging market currencies like the Turkish lira (TRY), Indian rupee (INR), and Indonesian rupiah (IDR). You might also include the Russian ruble (RUB) and Argentine peso (ARS).")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Some websites today say that any currency pair that does not include the USD is an “exotic” currency, but this is not the standard usage and creates confusion. A currency pair that does not include the dollar, such as EUR/GBP, is named a “cross-currency.” There is nothing “exotic” about either party to that pair! Moreover, the USD/ZAR is indeed considered an “exotic” even though it includes the dollar.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Note that when we have two exotics against one another, such as the ZAR/TRY (South African rand against the Turkish lira), it is an “exotic cross-currency.”")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The word exotic is probably used to refer to currencies that have low liquidity and are not traded in the very large amounts that the majors enjoy, such as the EUR/USD. The majors are the majors because they are active — high volumes — and therefore liquid. As noted above, when the dollar is the second name in a pair, you can usually assume the pip size is $0.10 per micro-lot, $1 per mini-lot, and $10 per standard lot. When the currency pair has the dollar as the first-named currency of the pair, the amounts being bought and sold refer to the other currency, and you have to translate those into dollars at the ending amount. Most exotic currencies are quoted as USD/TRY for the Turkish lira against the dollar, for example, or EUR/TRY for the lira against the euro.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Therefore, pip values in most exotics are in terms of the second currency. The easy way to find out the pip value is to look on your broker’s website or platform. You can also use a special pip value calculator for that purpose, but it is better to understand the principle that pip values are always denominated in the second currency named, so the pip value for USD/TRY will be in Turkish lira. To get the pip value in dollar terms, you have to divide by the current exchange rate. Assuming a currency pair quoted to the fourth decimal place, here is the example model for the standard size contract (divide by 10 to get smaller lot sizes):")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("For USD/TRY: 100,000 × 0.0001 = 10 TRY per pip/current USD/TRY rate 2.1127 = $4.7333 per pip.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("For GBP/TRY: 100,000 × 0.0001 = 10 TRY per pip/current GBP/TRY rate 3.5441 = £2.8216 per pip.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The important thing about exotic currencies is that the pip value tends to be much smaller than in the majors, as in the Turkish lira case above. This means you can trade more lots or a larger lot size with the same amount of starting capital.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Another important point about exotic currencies is that when they move, they move like a rocket. The EUR/USD can look positively staid in comparison. See the 2023 chart of USD/TRY below. The pair demonstrated a sharp rally from June 7 to July 18. The gain showed an insane amount of 54,413 points. In comparison, the euro/dollar also rallied during the same period, but the gain was just 608 points.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Image(.quiz9Pic4)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 5))

                            Text("Are exotics more trending than the majors? Yes, when there is a crisis that affects their currencies.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Moreover, when there is a crisis in one emerging market, quite often — but not always — it contaminates other exotic currencies too. Because of the relatively lower pip sizes, you can add a second exotic currency to your positions with relatively less risk than in the majors. However, beware! You can also get catastrophic spikes, as shown in the figure right after the highest high.")
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
                NinthQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension NinthInfoQuizView {
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
                introVM.completeQuiz(.init(id: 9, title: textTitle))
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
