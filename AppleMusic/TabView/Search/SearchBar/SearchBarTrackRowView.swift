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
                        .cornerRadius(10)
                        .frame(width: 70, height: 70)
                    VStack(alignment: .leading) {
                        Text(track.trackName)
                            .lineLimit(1)
                        Text(track.trackExecutor)
                            .foregroundColor(.secondary)
                            .lineLimit(1)
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


