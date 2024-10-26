//
//  QuoteGradientView.swift
//  CustomFont-SwiftUI
//
//  Created by Govind-Mulgir on 26/10/24.
//

import SwiftUI

/// Shows a linear gradient with provided colors.
struct QuoteGradientView: View {
    let colors: [Color]
    var body: some View {
        LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
    }
}

#Preview {
    QuoteGradientView(colors: [.white, .red])
}
