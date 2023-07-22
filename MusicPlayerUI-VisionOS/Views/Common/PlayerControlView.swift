//
//  PlayerControlView.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import SwiftUI

struct PlayerControlView: View {
    var body: some View {
        HStack {
            PlayerButton(image: "backward.fill")
            PlayerButton(image: "pause.fill")
            PlayerButton(image: "forward.fill")
            AudioPlayerView()
            PlayerButton(image: "quote.bubble")
            PlayerButton(image: "list.bullet")
            PlayerButton(image: "speaker.wave.3.fill")
        }.padding(.vertical, 10)
    }
}

struct AudioPlayerView: View {
    var body: some View {
        HStack {
            Image("weekend")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .cornerRadius(8)
            
            VStack(alignment: .leading) {
                Text("Blinding Lights")
                Text("The Weekend")
                    .font(.caption)
                    .foregroundStyle(.tertiary)
            }
            .frame(width: 240, alignment: .leading)
            
            Button(action: {}, label: {
                Image(systemName: "ellipsis")
            })
            .buttonBorderShape(.circle)
        }
        .padding(.vertical, 7)
        .padding(.horizontal, 8)
        .background(.ultraThickMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct PlayerButton: View {
    let image: String
    
    var body: some View {
        Button(action: {}, label: {
            Image(systemName: image)
        })
    }
}

#Preview {
    PlayerControlView()
}
