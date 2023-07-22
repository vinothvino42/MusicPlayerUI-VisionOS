//
//  MenuItem.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import Foundation

struct MenuItem: Identifiable, Hashable {
    let id = UUID()
    let label: String
    let icon: String
    
    static func getMenuItems() -> [MenuItem] {
        return [
            MenuItem(label: "Home", icon: "house"),
            MenuItem(label: "Search", icon: "magnifyingglass"),
            MenuItem(label: "Artists", icon: "music.mic"),
            MenuItem(label: "Songs", icon: "music.note"),
            MenuItem(label: "Your Library", icon: "book"),
        ]
    }
}
