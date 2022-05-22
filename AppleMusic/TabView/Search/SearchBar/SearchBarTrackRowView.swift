//
//  SearchBarTrackRowView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 03.05.2022.
//

import SwiftUI

struct SearchBarTrackRowView: View {
    var track: SearchBarDataTrack
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(track.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(Constants.searchBarTrackRowViewCornerRadius)
                        .frame(width: Constants.searchBarTrackRowViewImageFrame, height: Constants.searchBarTrackRowViewImageFrame)
                    VStack(alignment: .leading) {
                        Text(track.trackName)
                            .lineLimit(Constants.searchBarTrackRowViewTextLineLimit)
                        Text(track.trackExecutor)
                            .foregroundColor(.secondary)
                            .lineLimit(Constants.searchBarTrackRowViewTextLineLimit)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct SearchBarTrackRowView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarTrackRowView(track: SearchBarDataTrack.init(image: "SearchBarTrackImage1", trackName: "Кобра", trackExecutor: "Ислам Итляшев"))
    }
}


