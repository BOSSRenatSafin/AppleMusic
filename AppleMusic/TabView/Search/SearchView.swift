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
                        track.trackName.lowercased().contains(searchinFor.lowercased()) ||            track.trackExecutor.lowercased().contains(searchinFor.lowercased())
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
    @State var library = ["Apple Music", "Ваша библиотека"]
    @State var selectedLibrary = "Apple Music"
    let columns = [
        GridItem(.flexible())]
    
    var body: some View {
        if isSearching {
            VStack {
                Picker(selection: $selectedLibrary, label: Text("Библиотеки")) {
                    ForEach(library, id: \.self) {
                        Text($0)
                    }
                }
                .frame(alignment: .top)
                .pickerStyle(.segmented)
                if selectedLibrary == "Apple Music" {
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach(searchingFor.isEmpty ? SearchBarDataTrack.dataTrack : searchResults) {name in
                                SearchBarTrackRowView(track: name)
                            }
                        }
                    }
                    .listStyle(.grouped)
                } else {
                    Spacer()
                        .frame(width: Constants.searchViewSpacer)
                    Text("Здесь пока ничего нет")
                    Spacer()
                        .frame(width: Constants.searchViewSpacer)
                }
            }
        }
        else {
            MainSearchScreen()
            .navigationTitle("Поиск")    }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

