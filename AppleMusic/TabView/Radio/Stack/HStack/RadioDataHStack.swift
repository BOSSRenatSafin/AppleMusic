//
//  RadioDataHStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 11.04.2022.
//

import SwiftUI

struct RadioDataHStack: Identifiable {
    let image: String
    let firstTitle: String
    let secondTitle: String
    let thirdTitle: String
    var id: String { image }
}

extension RadioDataHStack {
    static var radioDataHStack: [RadioDataHStack] = [
        RadioDataHStack(image: "2", firstTitle: "Легкий поп", secondTitle: "Станция Apple Music", thirdTitle: "Apple Music"),
        RadioDataHStack(image: "3", firstTitle: "Новый Альбом", secondTitle: "Сверхновая", thirdTitle: "Сюзанна"),
        RadioDataHStack(image: "4", firstTitle: "Избранный плейлист", secondTitle: "С чистого листа", thirdTitle: "Apple Music Поп"),
        RadioDataHStack(image: "5", firstTitle: "Новый Микс", secondTitle: "Todey's Hits: April 2022 (DJ Mix)", thirdTitle: "ALTEGO"),
        RadioDataHStack(image: "6", firstTitle: "Добавьте предрелиз и слушайте первыми", secondTitle: "Смоки Мо, Дора, Banks и другие предрелизы", thirdTitle: "Apple Music")
    ]
}
