//
//  SeventhInfoQuizView.swift
//  QuizXguide
//
//  Created by Aleksandr Ataev on 03.03.2024.
//

import SwiftUI

struct SeventhInfoQuizView: View {

    @Environment(\.dismiss) var dismiss

    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0

    @Binding var isStartQuiz: Bool

    @State var startGame: Bool = false
    @EnvironmentObject var introVM: IntroductionViewModel
    let textTitle: String = "Trading Sessions"

    var body: some View {
        NavigationView {
            ZStack {
                AppBackgroundView()

                ScrollViewReader { proxyReader in
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .leading, spacing: 16) {
                            Text("The Forex market is open for business somewhere in the world 24 hours a day except for the period from the New York close at 18:00 EST/23:00 GMT on Friday evening to the Sydney/Wellington open late Sunday afternoon at 21:00 GMT/16:00 EST.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("GMT stands for Greenwich Mean Time, and EST stands for Eastern Standard Time. We sometimes used ET for Eastern Time, meaning the New York benchmark, whatever the time of year. Sometimes, it’s EST for Eastern Standard Time, and from spring to fall, it’s Eastern Daylight Savings Time, so the easy way to denote New York time is the short-form ET. In practice, New York closes at 17:00 ET, but many data vendors, including eSignal, use 17:59 ET (22:59 GMT) as the “close” and 18:00 ET (23:00 GMT) as the Sydney “open.”")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("London conducts more Forex trading than any other financial center, according to the Bank for International Settlements survey, and you will also see some data vendors and brokers using London time, either GMT or BST, the notation for daylight savings time, named British Summer Time. You may think that if you are in New York, you can just add 5 hours to get London time, but not so—the British and Americans do not coordinate the date of switching to and from daylight savings time, so sometimes it is 6 hours for a few days. Chances are, if you are not in the New York or London time zones, your broker adjusts the time on your screen clock to local time")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("It is easy to get confused, especially when a news source writes that the ECB policy decision will be delivered at 12:45 GMT and the governor’s press conference will begin at 14:30 CET, or Central European time. Even after many years, translating those times into local time can be a chore. A good way to figure out what those times are in local time is to Google “What time is it in London and Frankfurt?” You can also keep a set of clocks set to different time zones, as most professional trading rooms do.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("You care about what time it is in London or New York because those are the most active markets where you will find the best liquidity and because those are the two biggest overlapping time zones. We also have overlap from Asia to the Middle East and from Switzerland/Frankfurt to London, but one of the very best times to trade is when London and New York are both open.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Main Trading Sessions")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("One of the best time zone sites is www.timeanddate.com where you can find the UTC/GMT equivalent of every time zone.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("London: Greenwich Mean Time (GMT): No UTC/GMT offset.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Daylight saving time: +1 hour (notation becomes BST for British Summer Time).")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Frankfurt/Zurich: Central European Time (CET): UTC/GMT plus 1 hour.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Daylight saving time: +1 hour (notation becomes CEST for Central European Summer Time).")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("New York: Eastern Standard Time: UTC/GMT minus 5 hours.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Daylight saving time: +1 hour (notation becomes EDT for Eastern Daylight Time.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Sydney/Wellington: Australian Eastern Time (AET): UTC/GMT plus 10 hours.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Daylight saving time: +1 hour (notation becomes AEDT for Australian Eastern Daylight Time).")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Tokyo: Japan Standard Time (JST): UTC/GMT plus 9 hours (no daylight savings time).")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Overlapping Sessions")
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundStyle(.white)

                            Text("New York and London: 13:00 to 18:00 GMT, 8:00 to 12:00 ET.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("What Currencies to Trade and When?")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundStyle(.white)

                            Text("Technically, you can trade any currency pair at any time, but it goes without saying that the best time to trade a currency is when its home market is open. That means you can trade the AUD/USD at noon in New York, but you will find far more price action when Australia is open for trading. News releases are obviously made on local time. The best time to trade the yen (USD/JPY or EUR/JPY) is when Tokyo is open, and the very best time to trade the EUR/USD is before New York opens and then again after New York has opened. The EUR/USD does trade during the Asian session, but European news releases come out around an hour to two before the London open, meaning London traders tend to get to work early to catch them. Then, the UK news releases start coming out, and traders have two sets of factors to trade on, plus whatever may be still simmering from the Asian session, like a big move in equity prices, intervention, or some other major event.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("By the time New York opens around 8:00 ET (13:00 GMT), the European traders have gone home, but London traders still have a few hours to go. The London traders may have closed most positions ahead of the US open, but when they see whether the New York traders are continuing a trend started by the London traders, they may jump back in for a few hours. You will not see much action in the USD/CAD during the first part of the London session, so if you want to trade the CAD, wait for New York (and Toronto) to open.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("The two best times to trade major currencies in Forex are 3:00-5:00 ET (8:00 to 10:00 GMT) and again at 8:00-10:00 ET (13:00 to 17:00 GMT). The first gets you the big market — London — with both European and UK data releases. The second one is the overlap of London and New York. There is one conclusion to be drawn from this — that London traders work the longest hours of anyone in the industry.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("By noon New York time, trading has faded away to low volumes — unless it is a day on which the Fed announcement is due. This is always at 14:00 ET on the Fed meeting date, and you should not need a calendar to tell you when it is because market chatter will be especially voluminous ahead of time. Some calendar events will become engraved on your memory, like 7:45 ET for ECB policy announcements (12:45 GMT), 8:30 (14:30 CET) for the governor’s press conference, and 14:00 ET on Fed day.")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Text("Below, you can find the hours diagram of the three major trading sessions. The timezone is GMT (UTC); the yellow squares mean hours that are active only during summer (daylight saving time); the blue squares show hours that are open only during winter (when DST is off):")
                                .font(.system(size: 16))
                                .foregroundStyle(Color.theme.textGray)

                            Image(.quiz7Pic1)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 5))

                            Text("Depending on what currencies you are trading, it will pay you to know the exact release time and date of important data and central banks news. In some years, if you trade the yen, you will want to keep track of the news stories published by the local press near lunchtime and the end of the Tokyo day. The journalists crowd the hallways of the Ministry of Finance and the Bank of Japan to catch officials on their way in and out, hoping for a tidbit to write about. When big events are brewing, including intervention and jawboning, this is when we read about them. Tokyo is 13 hours ahead of the New York time zone, so that means an odd schedule.")
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
                SeventhQuizGameView(isShowQuizGame: $startGame)
            }
        }
        .navigationViewStyle(.stack)
    }
}

//MARK: EXTENSION
extension SeventhInfoQuizView {
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
                introVM.completeQuiz(.init(id: 7, title: textTitle))
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
