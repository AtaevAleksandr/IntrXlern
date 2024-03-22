//
//  SixthInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct SixthInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Forex Market Structure"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("In its latest Triennial Central Bank survey, the BIS says that an average of $7.5 trillion traded hands in currency markets in April 2022, up from $6.6 trillion in 2019. More than two trillion dollars was in spot foreign exchange (where the bulk of retail trading action is seen), $3.8 trillion was executed in FX swaps, and $1.2 trillion in outright FX forwards.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("In order to have a better understanding of the foreign exchange market’s structure and size, it is helpful to look at the breakdown of turnover by counterparty in the BIS survey.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("There are three main categories:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            VStack(alignment: .leading, spacing: 10) {
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("Other financial institutions created 48% of all trades' volumes.")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("Reporting dealers - 46%.")
                                }
                                HStack {
                                    Circle()
                                        .stroke(Color.theme.customGreen, lineWidth: 2)
                                        .frame(width: 12, height: 12)
                                    Text("Non-financial customers - 6%.")
                                }
                            }
                            .font(.system(size: 16))
                            .foregroundStyle(Color.theme.textGray)

                            Text("The BIS considers a reporting dealer as:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("...mainly large commercial and investment banks and securities houses that (i) participate in the inter-dealer market and/or (ii) have an active business with large customers, such as large corporate firms, governments and non-reporting financial institutions; in other words, reporting dealers are institutions that actively buy and sell currency and OTC derivatives both for their own account and/or in meeting customer demand.")
                                .italic()
                                .padding(.horizontal, 5)
                                .padding(.vertical, 3)
                                .font(.system(size: 16))
                                .background(Color.white.opacity(0.2))
                                .clipShape(RoundedRectangle(cornerRadius: 7))
                                .foregroundStyle(Color.theme.textGray)

                            Text("In the past ten years, the line between investment banks and commercial banks has been blurred. Citibank and JP Morgan Chase are considered investment banks despite the fact that they also have commercial bank enterprises (they take deposits and make loans). Goldman Sachs and Morgan Stanley are also investment banks, even though they received Troubled Asset Relief Program (TARP) funds during the US financial crisis.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The BIS considers other financial institutions as:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("...all other financial institutions such as smaller commercial banks, investment banks and securities houses, and mutual funds, pension funds, hedge funds, currency funds, money market funds, building societies, leasing companies, insurance companies, other financial subsidiaries of corporate firms and central banks.")
                                .italic()
                                .padding(.horizontal, 5)
                                .padding(.vertical, 3)
                                .font(.system(size: 16))
                                .background(Color.white.opacity(0.2))
                                .clipShape(RoundedRectangle(cornerRadius: 7))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The other financial institutions umbrella is quite large, with various sub-buckets. The category includes “proprietary trading firms that invest, hedge, or speculate for their own accounts,” with high-frequency trading (HFT) firms and other algorithmic trading firms in this sub-bucket. Big speculators such as Soros or Bridgewater are in this camp also.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The other financial institutions category also includes “Official Sector Financial Institutions,” such as global central banks (The Federal Reserve, European Central Bank, Bank of England, etc.), sovereign wealth funds (Abu Dhabi Investment Authority, China Investment Corporation, SAMA foreign holdings, etc.), international financial institutions of the public sectors (such as the BIS, International Monetary Fund), development banks (World Bank, Asian Development Bank, European Bank for Reconstruction and Development, etc.), and agencies.  Last but not least, there is also a sub-bucket “Other” for all other remaining financial institutions (such as the retail aggregators).")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The “other financial institutions” category continued to outpace the “reporting dealers“ category in terms of trading activity but started to slow its growth:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Overall, inter-dealer trading, ie trading among “reporting dealers”, reached $3.5 trillion or 46% of global turnover in April 2022, a higher share than in previous Surveys. Trading with “other financial institutions” saw modest growth and accounted for 48% of global turnover (down from 55% in 2019).")
                                .italic()
                                .padding(.horizontal, 5)
                                .padding(.vertical, 3)
                                .font(.system(size: 16))
                                .background(Color.white.opacity(0.2))
                                .clipShape(RoundedRectangle(cornerRadius: 7))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The BIS sees a non-financial customer as:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("...any counterparty other than those described above, i.e. mainly non-financial end users, such as corporations and non-financial government entities. May also include private individuals who directly transact with reporting dealers for investment purposes, either on the online retail trading platforms operated by the reporting dealers or by other means (e.g. giving trading instructions by phone.)")
                                .italic()
                                .padding(.horizontal, 5)
                                .padding(.vertical, 3)
                                .font(.system(size: 16))
                                .background(Color.white.opacity(0.2))
                                .clipShape(RoundedRectangle(cornerRadius: 7))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Currency trading continues to be concentrated in a handful of global financial centers, the BIS reported:")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("FX trading continues to be concentrated in major financial centres. In April 2022, sales desks in five locations – the United Kingdom, the United States, Singapore, Hong Kong SAR and Japan – intermediated 78% of all FX trading. The United Kingdom remained the most important FX trading location globally, with 38% of global turnover (from 43% in 2019).")
                                .italic()
                                .padding(.horizontal, 5)
                                .padding(.vertical, 3)
                                .font(.system(size: 16))
                                .background(Color.white.opacity(0.2))
                                .clipShape(RoundedRectangle(cornerRadius: 7))
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
                SixthQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension SixthInfoQuizView {
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
                introVM.completeQuiz(.init(id: 6, title: textTitle))
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
