//
//  ModelVStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 11.04.2022.
//

import SwiftUI

struct ModelRadioVStack: Identifiable {
    let image: String
    let firstTitle: String
    let secondTitle: String
    var id: String { image }
}
