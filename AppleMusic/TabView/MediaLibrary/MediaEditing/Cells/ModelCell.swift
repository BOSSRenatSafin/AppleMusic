//
//  ModelCell.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 03.04.2022.
//

import SwiftUI

struct Cell: Identifiable {
    let name: String
    let nameImage: String
    var id: String { name }
}
