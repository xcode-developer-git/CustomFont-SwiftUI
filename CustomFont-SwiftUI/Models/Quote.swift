//
//  Quote.swift
//  CustomFont-SwiftUI
//
//  Created by Govind-Mulgir on 26/10/24.
//

import SwiftUI

/// A model holds the all data related to quote
struct Quote: Identifiable {
    let id = UUID()
    let text: String
    let author: String
    let fontName: String
    let gradientColors: [Color]
}
