//
//  SecondRowSwitchSearchScreenContent.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.05.2022.
//

import SwiftUI

struct SecondRowSwitchSearchScreenContent: View {
    let row = [
        GridItem(.fixed(Constants.secondRowSwitchSearchScreenGridItem))]
    
    var body: some View {
        LazyHGrid(rows: row) {
            ForEach(DataSecondRowSwitchSearchScreen.dataSecondRowSwitchSearchScreen) {cell in
                
                VStack(alignment: .leading) {
                    Image(cell.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(Constants.secondRowSwitchSearchScreenImageCornerRadius)
                        .frame(width: Constants.secondRowSwitchSearchScreenImageWidth)
                    Text(cell.firstTitle)
                        .frame(width: Constants.secondRowSwitchSearchScreenTextWidth)
                        .lineLimit(Constants.secondRowSwitchSearchScreenTextLineLimit)
                    Text(cell.secondTitle)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(.leading)
        .frame(height: Constants.secondRowSwitchSearchScreenHGridFrame)    }
}

struct SecondRowSwitchSearchScreenContent_Previews: PreviewProvider {
    static var previews: some View {
        SecondRowSwitchSearchScreenContent()
    }
}
