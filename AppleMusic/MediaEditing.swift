//
//  MediaEditing.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.03.2022.
//

import SwiftUI

private struct Cell: Identifiable {
    let name: String
    let nameImage: String
    var id: String { name }
}

private let cells: [Cell] = [
    Cell(name: "Плейлисты", nameImage: "music.note.list"),
    Cell(name: "Артисты", nameImage: "music.mic"),
    Cell(name: "Альбомы", nameImage: "square.stack"),
    Cell(name: "Песни", nameImage: "music.note"),
    Cell(name: "Телешоу и фильмы", nameImage: "tv"),
    Cell(name: "Видеоклипы", nameImage: "music.note.tv"),
    Cell(name: "Жанры", nameImage: "guitars"),
    Cell(name: "Сборники", nameImage: "person.2.crop.square.stack"),
    Cell(name: "Авторы", nameImage: "music.quarternote.3"),
    Cell(name: "Загружено", nameImage: "arrow.down.circle"),
    Cell(name: "Домашняя коллекция", nameImage: "music.note.house")]

struct MediaEditing: View {
    var body: some View {
        List {
            ForEach (cells) { cells in
                HStack{
                    Image(systemName: cells.nameImage)
                        .foregroundColor(.red)
                    Text(cells.name)
                }
            }
        }
        .listStyle(.inset)
    }
}

struct MediaEditing_Previews: PreviewProvider {
    static var previews: some View {
        MediaEditing()
    }
}
