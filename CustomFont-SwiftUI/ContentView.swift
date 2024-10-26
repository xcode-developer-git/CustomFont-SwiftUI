//
//  ContentView.swift
//  CustomFont-SwiftUI
//
//  Created by Govind-Mulgir on 26/10/24.
//

import SwiftUI

// Steps:
// Add custom fonts into project
// Add font entries in plist file
// List down font names
// Set up UI with custom fonts

/// Custom fonts:
/// - Array-Bold
/// - Sprat-Bold
/// - Teko-Light_Bold
/// - NippoVariable-bold
/// - CabinSketch-Bold

struct ContentView: View {
    @StateObject private var quoteProvider = QuoteProvider()
    var body: some View {
        ScrollableQuoteTabView(quoteProvider: quoteProvider)
    }
}

#Preview {
    ContentView()
}
