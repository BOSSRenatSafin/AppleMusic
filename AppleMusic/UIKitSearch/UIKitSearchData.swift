//
//  UIKitSearchData.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.05.2022.
//

import UIKit

struct SettingsSection: Hashable {
    let title: String
    let albums: [Album]
}

struct Album: Decodable, Hashable {
    let imegeName: String
}

class UIKitSearchData {
    static func createSection() -> [SettingsSection] {
        return [SettingsSection(title: "Поиск по категориям", albums:
                                    [Album(imegeName: "MainSearchScreen1"),
                                     Album(imegeName: "MainSearchScreen2"),
                                     Album(imegeName: "MainSearchScreen3"),
                                     Album(imegeName: "MainSearchScreen4"),
                                     Album(imegeName: "MainSearchScreen5"),
                                     Album(imegeName: "MainSearchScreen6"),
                                     Album(imegeName: "MainSearchScreen7"),
                                     Album(imegeName: "MainSearchScreen8")
                                    ])
        ]
    }
}
