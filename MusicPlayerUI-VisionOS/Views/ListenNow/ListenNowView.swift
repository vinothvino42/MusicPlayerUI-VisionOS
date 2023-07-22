//
//  ListenNowView.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import SwiftUI

struct ListenNowView: View {
    @State private var searchField: String = ""
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                TextField("", text: $searchField,
                    prompt: Text("Search songs, albums, playlists")
                    .foregroundStyle(.white.opacity(0.7))
                )
                .frame(height: 100)
                .textFieldStyle(.roundedBorder)
                
                VStack(spacing: 8) {
                    SongsListView(heading: "2023 Top Hits")
                    SongsListView(heading: "Trending Songs")
                    AlbumListView(heading: "Hot Playlists")
                    SongsListView(heading: "New Releases")
                    AlbumListView(heading: "Discover Indie")
                    SongsListView(heading: "Stay Upbeat")
                    AlbumListView(heading: "Pop Shots")
                }
            }
        }
        .padding(.horizontal, 30)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack(alignment: .leading) {
                    Text("Good Morning 🌤️")
                        .font(.largeTitle)
                    Text("Welcome back!")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button(action: {}, label: {
                    Image("avatar")
                })
            }
        }
    }
}




#Preview {
    ListenNowView()
}
