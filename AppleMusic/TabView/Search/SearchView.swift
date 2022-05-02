//
//  SearchView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 03.04.2022.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationView {
            MainSearchScreen()
                .navigationTitle("Поиск")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
