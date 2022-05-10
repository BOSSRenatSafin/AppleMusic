//
//  SearchView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 03.04.2022.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var data = SearchBarData()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationView {
                SearchableView(searchingFor: $data.searchingFor, searchResults: $data.searchResults)
            }.searchable(text: $data.searchingFor, placement: .navigationBarDrawer(displayMode: .always), prompt: "Артисты, песни, тексты и др.")
                .onChange(of: data.searchingFor) { searchinFor in
                    data.searchResults = SearchBarDataTrack.dataTrack.filter({ track in
                        track.trackName.lowercased().contains(searchinFor.lowercased())
                    })
                }
        }
        .padding(.bottom, Constants.searchViewPadding)
    }
}

struct SearchableView: View {
    @Environment(\.isSearching) var isSearching
    @Binding var searchingFor: String
    @Binding var searchResults: [SearchBarDataTrack]
    
    var body: some View {
        if isSearching {
            List(searchingFor.isEmpty ? SearchBarDataTrack.dataTrack : searchResults) { name in
                SearchBarTrackRowView(track: name)
            }
            .listStyle(.grouped)    } else {
                MainSearchScreen()
                .navigationTitle("Поиск")    }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

