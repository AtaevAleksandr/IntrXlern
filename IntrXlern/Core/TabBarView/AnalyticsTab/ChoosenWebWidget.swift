//
//  ChoosenWebWidget.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 03.04.2024.
//

import SwiftUI

enum WebWidget: String, CaseIterable {
    case heatWidget = "Heatmap"
    case priceWidget = "Prices"
}

struct ChoosenWebWidget: View {

    var selectedWidget: WebWidget
    @State private var isLoading: Bool = false

    var heatWidgetHtml: String = """
    <div class="tradingview-widget-container">
      <div class="tradingview-widget-container__widget"></div>
      <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-forex-heat-map.js" async>
      {
      "width": "950",
      "height": "450",
      "currencies": [
        "EUR",
        "USD",
        "JPY",
        "GBP",
        "CHF",
        "AUD",
        "CAD",
        "NZD",
        "CNY",
        "HKD",
        "SGD"
      ],
      "isTransparent": false,
      "colorTheme": "dark",
      "locale": "en",
      "backgroundColor": "#22193D"
    }
      </script>
    </div>
    """

    var priceWidgetHtml: String = """
    <div class="tradingview-widget-container">
      <div class="tradingview-widget-container__widget"></div>
      <script type="text/javascript" src="https://s3.tradingview.com/external-embedding/embed-widget-forex-cross-rates.js" async>
      {
      "width": 950,
      "height": 450,
      "currencies": [
        "EUR",
        "USD",
        "JPY",
        "GBP",
        "CHF",
        "AUD",
        "CAD",
        "NZD",
        "CNY",
        "HKD",
        "SGD"
      ],
      "isTransparent": false,
      "colorTheme": "dark",
      "locale": "en",
      "backgroundColor": "#22193D"
    }
      </script>
    </div>
    """

    var body: some View {
        switch selectedWidget {
        case .heatWidget:
            WebWidgetView(html: heatWidgetHtml, isLoading: $isLoading)
                .overlay {
                    isLoading ? ProgressView("Loading...").toAnyView() : EmptyView().toAnyView()
                }
                .frame(maxWidth: .infinity)
        case .priceWidget:
            WebWidgetView(html: priceWidgetHtml, isLoading: $isLoading)
                .overlay {
                    isLoading ? ProgressView("Loading...").toAnyView() : EmptyView().toAnyView()
                }
                .frame(maxWidth: .infinity)
        }
    }
}

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}

#Preview {
    ChoosenWebWidget(selectedWidget: .heatWidget)
}
