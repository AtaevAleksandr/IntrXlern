//
//  TenthInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct TenthInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Lots"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("A lot is the minimum number of currency units in a single trade. The standard lot in most Forex futures is 100,000 units of foreign currency, like the euro, Swiss franc, Australian dollar, or Canadian dollar (£62,500 in the pound and ¥100,000 in the yen). The standard lot in professional interbank Forex trading is generally $5 million. If a trader wants to do less, he specifies “small” or the amount when asking for a bid/offer, and if he wants to do more, he will say “size.”")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The standard lot for spot retail trading is 100,000 units of foreign currency, but the number of contract specifications has risen in recent years. The retail spot market began to expand only when the mini lot was introduced (10,000 units). A little later, the micro lot was introduced — a mere 1,000 units! The micro lot in the EUR/USD, for example, at €1,000 or $1,350 when the exchange rate is 1.3500, could be traded for as little as $135 in initial margin if the leverage ratio was 1:10.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Critics of the spot Forex market complain that the combination of micro lots and leverage was seducing the public into trading a security they did not understand just because it was the only choice available for a trader with a very small capital stake. This is overall true. You do not see micro lots in oil, corn, or equities, although technically, you could buy 10 shares of a stock priced at $13.50 with no leverage. Bigger equity players can get a 50% margin from the brokerage houses, but if all you have to trade with is a capital stake of $135, the broker is not offering you leverage.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("In the USA, regulations constrain leverage to a maximum of 1:50. Brokers in other countries can offer leverage of as much as 1:500, 1:1000, or even 1:2000, meaning that if you have $135, you could trade a face value of $67,500-worth of foreign currency units or more.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Some brokers offer something called a nano account, where the lot size is 100 units of foreign currency, say €100 or £100. The nano lot is also called the 0.001 lot. There are companies that do not restrict the size of a trade at all and offer position sizing down to a single currency unit (0.00001 lot).")
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
                TenthQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension TenthInfoQuizView {
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
                introVM.completeQuiz(.init(id: 10, title: textTitle))
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
