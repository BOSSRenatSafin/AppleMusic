//
//  DataSecondRowSwitchSearchScreen.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 02.05.2022.
//

import SwiftUI

struct DataSecondRowSwitchSearchScreen: Identifiable {
    let image: String
    let firstTitle: String
    let secondTitle: String
    var id: String { image }
}

extension DataSecondRowSwitchSearchScreen {
    static var dataSecondRowSwitchSearchScreen: [DataSecondRowSwitchSearchScreen] = [
        DataSecondRowSwitchSearchScreen(image: "SecondRowSwitchSearchScreen1", firstTitle: "Создано для пространственного аудио", secondTitle: "AppleMusic"),
        DataSecondRowSwitchSearchScreen(image: "SecondRowSwitchSearchScreen2", firstTitle: "Поп в пространственном аудио", secondTitle: "Apple Music Поп"),
        DataSecondRowSwitchSearchScreen(image: "SecondRowSwitchSearchScreen3", firstTitle: "Рок в пространственном аудио", secondTitle: "Apple Music Рок"),
        DataSecondRowSwitchSearchScreen(image: "SecondRowSwitchSearchScreen4", firstTitle: "Джаз в пространсвенном аудио", secondTitle: "Apple Music Джаз"),
        DataSecondRowSwitchSearchScreen(image: "SecondRowSwitchSearchScreen5", firstTitle: "Кантри в пространственном аудио", secondTitle: "Apple Music Кантри")]
}
