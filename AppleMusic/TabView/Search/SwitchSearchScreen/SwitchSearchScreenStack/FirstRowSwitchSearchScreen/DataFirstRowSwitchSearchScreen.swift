//
//  DataFirstRowSwitchSearchScreen.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 02.05.2022.
//

import SwiftUI

struct DataFirstRowSwitchSearchScreen: Identifiable {
    let image: String
    let firstTitle: String
    let secondTitle: String
    let thirdTitle: String
    var id: String { image }
}

extension DataFirstRowSwitchSearchScreen {
    static var dataFirstRowSwitchSearchScreen: [RadioDataFirstSection] = [
        RadioDataFirstSection(image: "FirstRowSwitchSearchScreen1", firstTitle: "ПРОСТРАНСТВЕННОЕ АУДИО", secondTitle: "-(Deluxe)", thirdTitle: "Ed Sheeran"),
        RadioDataFirstSection(image: "FirstRowSwitchSearchScreen2", firstTitle: "НОВИНКИВ ПРОСТРАНСТВЕННОМ АУДИО", secondTitle: "1", thirdTitle: "The Beatles"),
        RadioDataFirstSection(image: "FirstRowSwitchSearchScreen3", firstTitle: "НОВИНКИВ ПРОСТРАНСТВЕННОМ АУДИО", secondTitle: "Multitude", thirdTitle: "Stromae"),
        RadioDataFirstSection(image: "FirstRowSwitchSearchScreen4", firstTitle: "НОВИНКИВ ПРОСТРАНСТВЕННОМ АУДИО", secondTitle: "Run, Rose, Run", thirdTitle: "Dolly Parton"),
        RadioDataFirstSection(image: "FirstRowSwitchSearchScreen5", firstTitle: "ВОСХОД", secondTitle: "Долгожданный дубют певицы уже совсем скоро", thirdTitle: "___"),
        RadioDataFirstSection(image: "FirstRowSwitchSearchScreen6", firstTitle: "НОВИНКИВ ПРОСТРАНСТВЕННОМ АУДИО", secondTitle: "Cosas Del Diablo (Special Edition)", thirdTitle: "Adriel Favela")
    ]
}
