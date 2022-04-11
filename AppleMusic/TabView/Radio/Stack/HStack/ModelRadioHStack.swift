//
//  ModelRadioHStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 11.04.2022.
//

import SwiftUI

struct ModelRadioHStack: Identifiable {
    let image: String
    let firstTitle: String
    let secondTitle: String
    let thirdTitle: String
    var id: String { image }
}
