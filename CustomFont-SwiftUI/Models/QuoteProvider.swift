//
//  QuoteProvider.swift
//  CustomFont-SwiftUI
//
//  Created by Govind-Mulgir on 26/10/24.
//

import Foundation

/// A model which provides the quotes
class QuoteProvider: ObservableObject {
    @Published var quotes: [Quote] = []

    init() {
        loadQuotes()
    }

    // Create sample quotes data with different fonts
    private func loadQuotes() {
        quotes = [
            Quote(text: "या जन्मावर या जगण्यावर शतदा प्रेम करावे..",
                  author: "कुसुमाग्रज",
                  fontName: "Sprat-Bold",
                  gradientColors: [.white, .cyan]),
            Quote(
                text: "Stay hungry stay foolish",
                author: "Steve Jobs",
                fontName: "CabinSketch-Bold",
                gradientColors: [.white, .red]),
            Quote(
                text: "Any product that needs a manual to work is broken",
                author: "Elon Musk",
                fontName: "Array-Bold",
                gradientColors: [.white, .green]),
            Quote(
                text: "Success is a lousy teacher. It seduces smart people into thinking they can’t lose",
                author: "Bill Gates",
                fontName: "Teko-Light_Bold",
                gradientColors: [.white, .blue]),
            Quote(
                text: "I have not failed. I've just found 10,000 ways that won't work",
                author: "Thomas Edison",
                fontName: "Sprat-Bold",
                gradientColors: [.white, .yellow])
        ]
    }
}
