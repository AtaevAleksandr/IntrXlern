//
//  WebWidgetView.swift
//  IntrXlern
//
//  Created by Aleksandr Ataev on 03.04.2024.
//

import Foundation
import WebKit
import SwiftUI

struct WebWidgetView: UIViewRepresentable {
    let html: String
    @Binding var isLoading: Bool

    init(html: String, isLoading: Binding<Bool>) {
        self.html = html
        self._isLoading = isLoading
    }

    func makeUIView(context: Context) -> WKWebView {
        let configuration = WKWebViewConfiguration()
        let script = "var script = document.createElement('meta'); script.name = 'viewport'; script.content = 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no'; document.head.appendChild(script);"
        let userScript = WKUserScript(source: script, injectionTime: .atDocumentEnd, forMainFrameOnly: true)
        configuration.userContentController.addUserScript(userScript)
        let customBackColor = Color.theme.background
        let uiColor = UIColor(customBackColor)

        let webView = WKWebView(frame: .zero, configuration: configuration)
        webView.isOpaque = false
        webView.backgroundColor = uiColor
        webView.scrollView.backgroundColor = uiColor
        webView.scrollView.showsVerticalScrollIndicator = false
        webView.scrollView.showsHorizontalScrollIndicator = false
        webView.navigationDelegate = context.coordinator
        webView.loadHTMLString(html, baseURL: nil)
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebWidgetView

        init(parent: WebWidgetView) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            if !parent.isLoading {
                parent.isLoading = true
            }
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            if parent.isLoading {
                parent.isLoading = false
            }
        }
    }
}
