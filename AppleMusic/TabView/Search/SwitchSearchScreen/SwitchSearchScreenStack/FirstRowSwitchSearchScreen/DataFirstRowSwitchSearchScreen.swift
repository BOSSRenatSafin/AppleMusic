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
    static var dataFirstRowSwitchSearchScreen: [RadioDataHStack] = [
        RadioDataHStack(image: "FirstRowSwitchSearchScreen1", firstTitle: "ПРОСТРАНСТВЕННОЕ АУДИО", secondTitle: "-(Deluxe)", thirdTitle: "Ed Sheeran"),
        RadioDataHStack(image: "FirstRowSwitchSearchScreen2", firstTitle: "НОВИНКИВ ПРОСТРАНСТВЕННОМ АУДИО", secondTitle: "1", thirdTitle: "The Beatles"),
        RadioDataHStack(image: "FirstRowSwitchSearchScreen3", firstTitle: "НОВИНКИВ ПРОСТРАНСТВЕННОМ АУДИО", secondTitle: "Multitude", thirdTitle: "Stromae"),
        RadioDataHStack(image: "FirstRowSwitchSearchScreen4", firstTitle: "НОВИНКИВ ПРОСТРАНСТВЕННОМ АУДИО", secondTitle: "Run, Rose, Run", thirdTitle: "Dolly Parton"),
        RadioDataHStack(image: "FirstRowSwitchSearchScreen5", firstTitle: "ВОСХОД", secondTitle: "Долгожданный дубют певицы уже совсем скоро", thirdTitle: "___"),
        RadioDataHStack(image: "FirstRowSwitchSearchScreen6", firstTitle: "НОВИНКИВ ПРОСТРАНСТВЕННОМ АУДИО", secondTitle: "Cosas Del Diablo (Special Edition)", thirdTitle: "Adriel Favela")
    ]
}
