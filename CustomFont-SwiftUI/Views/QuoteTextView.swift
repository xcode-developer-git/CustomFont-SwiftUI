//
//  QuoteTextView.swift
//  CustomFont-SwiftUI
//
//  Created by Govind-Mulgir on 26/10/24.
//

import SwiftUI

/// A view to show quote text & author
struct QuoteTextView: View {
    // Public property
    let quote: Quote

    var body: some View {
        VStack(spacing: 20) {
            // Quote text
            Text(quote.text)
                .multilineTextAlignment(.center)
                .font(.custom(quote.fontName, size: 44))
                .padding()

            // Quote author
            Text("- \(quote.author)")
                .font(.custom(quote.fontName, size: 24))
        }
    }
}

#Preview {
    QuoteTextView(quote: QuoteProvider().quotes.first!)
}
