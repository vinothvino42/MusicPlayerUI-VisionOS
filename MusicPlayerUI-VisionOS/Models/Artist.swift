//
//  Artist.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import Foundation

struct Artist: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let image: String
    
    static func getArtists() -> [Artist] {
        return [
            Artist(name: "Adele", image: "weekend"),
            Artist(name: "John Mayer", image: "weekend"),
            Artist(name: "G-Eazy", image: "weekend"),
            Artist(name: "Nicky Jam", image: "weekend"),
        ]
    }
}
