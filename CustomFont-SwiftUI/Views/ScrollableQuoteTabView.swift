//
//  ScrollableQuoteTabView.swift
//  CustomFont-SwiftUI
//
//  Created by Govind-Mulgir on 26/10/24.
//

import SwiftUI

/// Shows a horizontally scrollable tab view to show quotes
struct ScrollableQuoteTabView: View {
    @ObservedObject var quoteProvider: QuoteProvider

    var body: some View {
        // Tab view
        TabView {
            ForEach(quoteProvider.quotes) { quote in
                VStack(spacing: 20) {
                    Spacer() // Spacer to push quote text at center

                    QuoteTextView(quote: quote)

                    Spacer() // Spacer to push quote text at center

                    FontNameCardView(fontName: quote.fontName)
                        .frame(height: 100)
                        .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    QuoteGradientView(colors: quote.gradientColors)
                        .ignoresSafeArea()
                )
            }
        }
        .ignoresSafeArea()
        .tabViewStyle(.page)
        .overlay(alignment: .topTrailing) { ChannelBrandingView() }
    }
}

#Preview {
    ScrollableQuoteTabView(quoteProvider: QuoteProvider())
}
