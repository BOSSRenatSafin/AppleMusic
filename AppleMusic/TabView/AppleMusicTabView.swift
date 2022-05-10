//
//  AppleMusicTabView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 03.04.2022.
//

import SwiftUI

struct AppleMusicTabView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                MediaLibrary()
                    .tabItem {
                        Image("collection.music")
                            .renderingMode(.template)
                        Text("Медиатека")
                    }
                
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            MiniPlayer()
        }
    }
}

struct AppleMusicTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppleMusicTabView()
    }
}
