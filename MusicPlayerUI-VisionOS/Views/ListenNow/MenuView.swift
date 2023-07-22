//
//  MenuView.swift
//  MusicPlayerUI-VisionOS
//
//  Created by Vinoth Vino on 22/07/23.
//

import SwiftUI

struct MenuView: View {
    let menuItems = MenuItem.getMenuItems()
    
    var body: some View {
        List(menuItems) { item in
            NavigationLink(value: item) {
                Label(
                    title: {
                        Text(item.label)
                    },
                    icon: {
                        Image(systemName: item.icon)
                    }
                )
            }
        }
        .tint(.white)
        .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack(alignment: .leading) {
                    Text("Library")
                        .font(.largeTitle)
                    Text("All Music")
                        .foregroundStyle(.tertiary)
                }
                .padding(.all, 8)
            }
            ToolbarItem {
                Button(action: {}, label: {
                    Image(systemName: "ellipsis")
                })
            }
        }
    }
}

#Preview {
    MenuView()
}
