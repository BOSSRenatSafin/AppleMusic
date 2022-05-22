//
//  AppleMusicTabView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 03.04.2022.
//

import SwiftUI

struct AppleMusicTabView: View {
    @State var expand = false
    @Namespace var animation 
    
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
                ContainerView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            MiniPlayer(expand: $expand, animation: animation)
        }
    }
}

struct AppleMusicTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppleMusicTabView()
    }
}
