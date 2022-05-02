//
//  DataMainSearchScreen.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 01.05.2022.
//

import SwiftUI

struct DataMainSearchScreen: Identifiable {
    let image: String
    var id: String { image }
}

extension DataMainSearchScreen {
    static var dataMainSearchScreen: [DataMainSearchScreen] = [
        DataMainSearchScreen(image: "MainSearchScreen1"),
        DataMainSearchScreen(image: "MainSearchScreen2"),
        DataMainSearchScreen(image: "MainSearchScreen3"),
        DataMainSearchScreen(image: "MainSearchScreen4"),
        DataMainSearchScreen(image: "MainSearchScreen5"),
        DataMainSearchScreen(image: "MainSearchScreen6"),
        DataMainSearchScreen(image: "MainSearchScreen7"),
        DataMainSearchScreen(image: "MainSearchScreen8"),
        DataMainSearchScreen(image: "MainSearchScreen9"),
        DataMainSearchScreen(image: "MainSearchScreen10"),
        DataMainSearchScreen(image: "MainSearchScreen11"),
        DataMainSearchScreen(image: "MainSearchScreen12"),
        DataMainSearchScreen(image: "MainSearchScreen13"),
        DataMainSearchScreen(image: "MainSearchScreen14"),
        DataMainSearchScreen(image: "MainSearchScreen15"),
        DataMainSearchScreen(image: "MainSearchScreen16")
    ]
}
