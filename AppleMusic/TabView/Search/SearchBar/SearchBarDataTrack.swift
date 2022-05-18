//
//  SearchBarDataTrack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 09.05.2022.
//

import SwiftUI

class SearchBarData: ObservableObject {
    @Published var searchingFor = ""
    @Published var searchResults: [SearchBarDataTrack] = []
}

struct SearchBarDataTrack: Identifiable {
    let image: String
    let trackName: String
    let trackExecutor: String 
    var id: String { image }
}

extension SearchBarDataTrack {
    static var dataTrack: [SearchBarDataTrack] = [
        SearchBarDataTrack(image: "SearchBarTrackImage1", trackName: "Кобра", trackExecutor: "Ислам Итляшев"),
        SearchBarDataTrack(image: "SearchBarTrackImage2", trackName: "Красавица", trackExecutor: "VAVAN"),
        SearchBarDataTrack(image: "SearchBarTrackImage3", trackName: "Романтик", trackExecutor: "XASSA"),
        SearchBarDataTrack(image: "SearchBarTrackImage4", trackName: "Ой, Молодой", trackExecutor: "FINIK"),
        SearchBarDataTrack(image: "SearchBarTrackImage5", trackName: "Numb", trackExecutor: "Sinny & 7vvch"),
        SearchBarDataTrack(image: "SearchBarTrackImage6", trackName: "Где лавэ", trackExecutor: "Nixizor"),
    ]
}



