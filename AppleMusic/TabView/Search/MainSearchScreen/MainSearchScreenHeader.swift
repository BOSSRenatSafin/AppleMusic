//
//  MainSearchScreenHeader.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.05.2022.
//

import SwiftUI

struct MainSearchScreenHeader: View {
    var body: some View {
        HStack {
            Spacer()
                .frame(width: Constants.mainSearchScreenGridItemSpacingSpacerWidth)
            Text("Поиск по категориям")
                .font(.system(size: Constants.mainSearchScreenGridItemSpacingTextSize, weight: .bold, design: .default))
        }
        Spacer()
            .frame(height: Constants.mainSearchScreenGridItemSpacingSpacerHeight)    }
}

