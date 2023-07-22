//
//  SongsListView.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import SwiftUI

struct SongsListView: View {
    let heading: String
    let songs: [MediaItem] = MediaItem.getSongs().shuffled()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(heading)
                    .font(.title)
                Spacer()
                Button("Show All") {}
                    .buttonStyle(.plain)
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 30) {
                    ForEach(songs) { album in
                        CardView(title: album.title, subtitle: album.artist, image: album.image)
                    }
                }
            }
        }
        .padding(.bottom, 10)
    }
}

#Preview {
    SongsListView(heading: "Trending")
}
