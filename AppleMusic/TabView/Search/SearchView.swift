//
//  SearchView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 03.04.2022.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                MainSearchScreen()
                    .navigationTitle("Поиск")
            }
            MiniPlayer()
                .opacity(Constants.radioViewMiniPlayerOpacity)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
