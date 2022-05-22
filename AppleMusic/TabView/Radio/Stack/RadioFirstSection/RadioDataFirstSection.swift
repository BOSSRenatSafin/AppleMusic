//
//  RadioDataFirstSection.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 11.04.2022.
//

import SwiftUI

struct RadioDataFirstSection: Identifiable {
    let image: String
    let firstTitle: String
    let secondTitle: String
    let thirdTitle: String
    var id: String { image }
}

extension RadioDataFirstSection {
    static var radioDataHStack: [RadioDataFirstSection] = [
        RadioDataFirstSection(image: "2", firstTitle: "Легкий поп", secondTitle: "Станция Apple Music", thirdTitle: "Apple Music"),
        RadioDataFirstSection(image: "3", firstTitle: "Новый Альбом", secondTitle: "Сверхновая", thirdTitle: "Сюзанна"),
        RadioDataFirstSection(image: "4", firstTitle: "Избранный плейлист", secondTitle: "С чистого листа", thirdTitle: "Apple Music Поп"),
        RadioDataFirstSection(image: "5", firstTitle: "Новый Микс", secondTitle: "Todey's Hits: April 2022 (DJ Mix)", thirdTitle: "ALTEGO"),
        RadioDataFirstSection(image: "6", firstTitle: "Добавьте предрелиз и слушайте первыми", secondTitle: "Смоки Мо, Дора, Banks и другие предрелизы", thirdTitle: "Apple Music")
    ]
}
