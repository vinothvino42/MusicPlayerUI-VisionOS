//
//  AlbumListView.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import SwiftUI

struct AlbumListView: View {
    let heading: String
    let albums: [MediaItem] = MediaItem.getAlbums().shuffled()
    
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
                LazyHStack(spacing: 20) {
                    ForEach(albums) { album in
                        CardView(title: album.title, subtitle: album.artist, image: album.image)
                    }
                }
            }
        }
        .padding(.bottom, 10)
    }
}

#Preview {
    AlbumListView(heading: "Trending")
}
