//
//  FontNameCardView.swift
//  CustomFont-SwiftUI
//
//  Created by Govind-Mulgir on 26/10/24.
//

import SwiftUI

/// A card showing a font name
struct FontNameCardView: View {
    let fontName: String
    
    var body: some View {
        ZStack {
            // White rounded rectangle with dark shadow
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .shadow(color: .black, radius: 2, x: 5, y: 5)

            // Font name
            HStack(spacing: 20) {
                Text("Font name:")
                Text(fontName)
            }
            .font(.custom(fontName, size: 20))
        }
        .frame(height: 100)
    }
}

#Preview {
    FontNameCardView(fontName: "Sprat-Bold")
}
