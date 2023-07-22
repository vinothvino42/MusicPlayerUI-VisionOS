//
//  MediaItem.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import Foundation

struct MediaItem: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let artist: String
    let image: String
    
    static func getAlbums() -> [MediaItem] {
        return [
            MediaItem(title: "Hot Right Now", artist: "Taylor Swift, Black Pink", image: "Art 1"),
            MediaItem(title: "Powerful Women Of Pop", artist: "The Weekend, Ariana Grande", image: "Art 2"),
            MediaItem(title: "50 Most Played", artist: "Rema, Selena Gomez", image: "Art 3"),
            MediaItem(title: "K-POP Now", artist: "NewJeans, EXO", image: "Art 4"),
            MediaItem(title: "Pop Stars", artist: "DJ Snake, Selena Gomez", image: "Art 5"),
            MediaItem(title: "K-Boys", artist: "Jung Kook, Stray Kids", image: "Art 6"),
            MediaItem(title: "Girl Squad", artist: "Billie Eilish, Miley Cyrus", image: "Art 7"),
            MediaItem(title: "Pop Culture", artist: "Dua Lipa, Jason Derulo", image: "Art 8"),
            MediaItem(title: "Viral Hits", artist: "Nicki Minaj, Ice Spice", image: "Art 9"),
            MediaItem(title: "Acoustic Pop", artist: "Taylor Swift, Ed Sheeran", image: "Art 10"),
        ]
    }
    
    static func getSongs() -> [MediaItem] {
        return [
            MediaItem(title: "Levitating", artist: "Dua Lipa", image: "dualipa"),
            MediaItem(title: "Save Your Tears", artist: "The Weekend, Ariana Grande", image: "weekend"),
            MediaItem(title: "Dance The Night", artist: "Dua Lipa", image: "barbie"),
            MediaItem(title: "Super Shy", artist: "NewJeans", image: "newjeans"),
            MediaItem(title: "Blinding Lights", artist: "The Weekend", image: "weekend2"),
            MediaItem(title: "FLOWER", artist: "JISOO", image: "jisoo"),
            MediaItem(title: "abcdefu", artist: "GAYLE", image: "gayle"),
            MediaItem(title: "Anti Hero", artist: "Taylor Swift", image: "taylorswift"),
            MediaItem(title: "SNAP", artist: "Rosa Linn", image: "rosalin"),
            MediaItem(title: "Pink Venom", artist: "Blackpink", image: "blackpink"),
            MediaItem(title: "Criminal", artist: "Britney Spears", image: "britneyspears"),
        ]
    }
}
