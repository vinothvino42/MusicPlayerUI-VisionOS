//
//  CardView.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import SwiftUI

struct CardView: View {
    let title: String
    let subtitle: String
    let image: String
    let isCircle: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(height: 180)
                .frame(maxWidth: 220)
                .background(.orange)
                .cardClipShape(isCircle: isCircle)
            
            VStack(alignment: .leading, spacing: 0) {
                Text(title)
                    .font(.system(size: 17))
                Text(subtitle)
                    .lineLimit(1)
                    .font(.system(size: 14))
                    .foregroundStyle(.tertiary)
            }
            .padding(.bottom)
        }
        .frame(width: 220)
        .clipped()
    }
}
