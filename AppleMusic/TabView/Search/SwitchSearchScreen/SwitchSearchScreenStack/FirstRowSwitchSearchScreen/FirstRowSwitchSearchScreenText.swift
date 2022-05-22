//
//  FirstRowSwitchSearchScreenText.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.05.2022.
//

import SwiftUI

struct FirstRowSwitchSearchScreenText: View {
    var row = [
        GridItem(.fixed(Constants.firstRowSwitchSearchScreenGridItem))]
    
    var body: some View {
        LazyHGrid(rows: row, spacing: Constants.firstRowSwitchSearchScreenGridSpacing) {
            ForEach(DataFirstRowSwitchSearchScreen.dataFirstRowSwitchSearchScreen) {cell in
                VStack(alignment: .leading) {
                    Text(cell.firstTitle)
                        .foregroundColor(.secondary)
                    Text(cell.secondTitle)
                    Text(cell.thirdTitle)
                        .foregroundColor(.secondary)
                    Image(cell.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(Constants.firstRowSwitchSearchScreenImageCornerRadius)
                }
                
            }
            .padding(.leading)
        }
        .frame(height: Constants.firstRowSwitchSearchScreenGridFrame)
        Spacer()
            .frame(height: Constants.firstRowSwitchSearchScreenSpacerTop)
        Divider()
    }
}

struct FirstRowSwitchSearchScreenText_Previews: PreviewProvider {
    static var previews: some View {
        FirstRowSwitchSearchScreenText()
    }
}
