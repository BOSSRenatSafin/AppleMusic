//
//  MediaLibraryData.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 03.04.2022.
//

import SwiftUI

struct MediaLibraryData: Identifiable {
    let name: String
    let nameImage: String
    var id: String { name }
}

extension MediaLibraryData {
    static var mediaLibraryData: [MediaLibraryData] = [
        MediaLibraryData(name: "Плейлисты", nameImage: "music.note.list"),
        MediaLibraryData(name: "Артисты", nameImage: "music.mic"),
        MediaLibraryData(name: "Альбомы", nameImage: "square.stack"),
        MediaLibraryData(name: "Песни", nameImage: "music.note"),
        MediaLibraryData(name: "Телешоу и фильмы", nameImage: "tv"),
        MediaLibraryData(name: "Видеоклипы", nameImage: "music.note.tv"),
        MediaLibraryData(name: "Жанры", nameImage: "guitars"),
        MediaLibraryData(name: "Сборники", nameImage: "person.2.crop.square.stack"),
        MediaLibraryData(name: "Авторы", nameImage: "music.quarternote.3"),
        MediaLibraryData(name: "Загружено", nameImage: "arrow.down.circle"),
        MediaLibraryData(name: "Домашняя коллекция", nameImage: "music.note.house")]
}
