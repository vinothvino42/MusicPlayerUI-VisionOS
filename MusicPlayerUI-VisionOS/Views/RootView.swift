//
//  RootView.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            NavigationSplitView {
                MenuView()
            } detail: {
                ListenNowView()
            }.tabItem {
                Label("Listen Now", systemImage: "music.note")
            }
            .tag(0)

            NavigationStack {
                BrowseListView()
            }
            .tabItem {
                Label("Browse", systemImage: "play.square.stack")
            }
            .tag(1)
        }
        .toolbar {
            ToolbarItemGroup(placement: .bottomOrnament) {
                PlayerControlView()
            }
        }
    }
}

#Preview {
    RootView()
}
