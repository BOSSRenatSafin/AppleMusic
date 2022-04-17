//
//  RadioDataVStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 11.04.2022.
//

import SwiftUI

struct RadioDataVStack: Identifiable {
    let image: String
    let firstTitle: String
    let secondTitle: String
    var id: String { image }
}

extension RadioDataVStack {
    static var radioDataVStack: [RadioDataVStack] = [
        RadioDataVStack(image: "10", firstTitle: "Музыкальный базар с Бастой", secondTitle: "В эпицентре музыкальной жизни"),
        RadioDataVStack(image: "11", firstTitle: "One Mix", secondTitle: "Микс от лучших диджеев"),
        RadioDataVStack(image: "12", firstTitle: "The Alligator Hour", secondTitle: "Американский продюссер"),
        RadioDataVStack(image: "13", firstTitle: "Deep Hidden Meaning", secondTitle: "Легендарный хитмейкер"),
        RadioDataVStack(image: "14", firstTitle: "Rocket Hour", secondTitle: "Поп легенды"),
        RadioDataVStack(image: "15", firstTitle: "STMPD Radio", secondTitle: "Эксклюзивные треки и новые звезды")]
}
