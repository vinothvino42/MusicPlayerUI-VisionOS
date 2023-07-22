//
//  AlbumItem.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import Foundation

struct AlbumItem: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let artist: String
    let image: String
    
    static func getAlbumItems() -> [AlbumItem] {
        return [
            AlbumItem(title: "Fine Line 1", artist: "Harry Styles", image: ""),
            AlbumItem(title: "Fine Line 2", artist: "Harry", image: ""),
            AlbumItem(title: "Fine Line 3", artist: "Styles", image: ""),
        ]
    }
}
