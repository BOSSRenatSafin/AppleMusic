//
//  RadioDataVStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 11.04.2022.
//

import SwiftUI

struct RadioDataSecondSection: Identifiable {
    let image: String
    let firstTitle: String
    let secondTitle: String
    var id: String { image }
}

extension RadioDataSecondSection {
    static var radioDataVStack: [RadioDataSecondSection] = [
        RadioDataSecondSection(image: "10", firstTitle: "Музыкальный базар с Бастой", secondTitle: "В эпицентре музыкальной жизни"),
        RadioDataSecondSection(image: "11", firstTitle: "One Mix", secondTitle: "Микс от лучших диджеев"),
        RadioDataSecondSection(image: "12", firstTitle: "The Alligator Hour", secondTitle: "Американский продюссер"),
        RadioDataSecondSection(image: "13", firstTitle: "Deep Hidden Meaning", secondTitle: "Легендарный хитмейкер"),
        RadioDataSecondSection(image: "14", firstTitle: "Rocket Hour", secondTitle: "Поп легенды"),
        RadioDataSecondSection(image: "15", firstTitle: "STMPD Radio", secondTitle: "Эксклюзивные треки и новые звезды")]
}
