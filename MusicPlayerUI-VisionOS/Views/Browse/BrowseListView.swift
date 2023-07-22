//
//  BrowseListView.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import SwiftUI

struct BrowseListView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 8) {
                AlbumListView(heading: "Hot Playlists")
                ArtistsListView(heading: "Top Artists")
                SongsListView(heading: "Trending Songs")
                AlbumListView(heading: "Pop Shots")
                ArtistsListView(heading: "Artists For You")
                AlbumListView(heading: "Discover Indie")
                SongsListView(heading: "Stay Upbeat")
            }
            .padding(.horizontal, 30)
        }
        .padding(.horizontal, 30)
        .navigationTitle("Browse")
    }
}

#Preview {
    BrowseListView()
}
