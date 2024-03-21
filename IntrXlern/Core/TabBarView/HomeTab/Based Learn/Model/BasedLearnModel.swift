//
//  BasedLearnModel.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 21.03.2024.
//

import Foundation
import SwiftUI

struct BasedLearnModel: Identifiable, Hashable {
    let id: Int
    let title: String
    let text: String
    var isComplete: Bool = false
    var isActive: Bool = false
    var backgroundColor: Color {
        if isComplete {
            return Color.theme.completeBackColor
        } else if isActive {
            return Color.theme.customPurple
        } else {
            return Color.theme.notActive
        }
    }

    var textColor: Color {
        if isComplete {
            return Color.theme.customGray
        } else if isActive {
            return Color.white
        } else {
            return Color.theme.customGray
        }
    }

    static var lessons: [BasedLearnModel] = [
        BasedLearnModel(id: 1, title: "Fundamental Analysis", text: "Forex fundamental analysis is a type of market analysis that is performed based only on actual events and macroeconomic data related to the traded currencies. Fundamental analysis is used not only in Forex but can be a part of any financial planning or forecasting. The concepts that are part of fundamental analysis of currencies: overnight interest rates, central bank meetings and decisions, any macroeconomic news, global industrial, economic, political, and weather news. Fundamental analysis is the most natural way of making FX market forecasts. In theory, it alone should work perfectly but in practice, it is often used in pair with technical analysis."),
        BasedLearnModel(id: 2, title: "Technical Analysis", text: "Forex technical analysis is a type of market analysis that relies only on market data numbers - quotes, charts, simple and complex indicators, volume of supply and demand, past market data, etc. The main idea behind technical analysis of currencies is the postulate of functional dependence of the future market technical data on the past market technical data. Same as with fundamental analysis, technical analysis is believed to be self-sufficient and you can use it alone to trade Forex successfully. In practice, both analysis methods are used."),
        BasedLearnModel(id: 3, title: "Money Management", text: "Even if you master every possible method of market analysis and will make very accurate predictions for future Forex market behavior, you will not make any money without a proper money management strategy. Money management in Forex (as well as in other financial markets) is a complex set of rules that you develop to fit your own trading style and amount of capital you have for trading. Money management plays very important role in getting profits out of Forex; do not underestimate it."),
        BasedLearnModel(id: 4, title: "Trading Psychology", text: "While learning a lot about market analysis and money management is an obvious and necessary step to become a successful FX trader, you also need to master your emotions to keep your trading performance under strict control of mind and intuition. Controlling your emotions in Forex trading is often balancing between greed and fear. Almost any known psychological practices and techniques can help currency traders to follow their trading strategies rather than their spontaneous emotions. The problems you will have to deal with while being a professional Forex trader include: Greed, Overtrading, Lack of discipline, Lack of confidence, Blind following others' forecasts"),
        BasedLearnModel(id: 5, title: "Forex Brokerage", text: "Every Forex trader, like any other professional, needs tools to trade. One of these tools, which is vital to be in the market, is a Forex broker and specifically for the Internet - an online Forex broker - a company which will provide real-time market information to traders and bring their orders to the Forex market.")
    ]
}
