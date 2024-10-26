//
//  ChannelBrandingView.swift
//  CustomFont-SwiftUI
//
//  Created by Govind-Mulgir on 26/10/24.
//

import SwiftUI

/// View that shows ``@Xcode-Developer`` channel branding log
struct ChannelBrandingView: View {
    var body: some View {
        Image("ChannelLogo")
            .resizable()
            .frame(width: 50, height: 50)
            .padding()
            .clipShape(Circle())
            .clipped()
            .shadow(color: .black ,radius: 2, x: 5, y: 5)
    }
}

#Preview {
    ChannelBrandingView()
}
