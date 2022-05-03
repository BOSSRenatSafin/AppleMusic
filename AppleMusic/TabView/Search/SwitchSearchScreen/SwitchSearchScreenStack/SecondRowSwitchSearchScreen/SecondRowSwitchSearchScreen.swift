//
//  SecondRowSwitchSearchScreen.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 02.05.2022.
//

import SwiftUI

struct SecondRowSwitchSearchScreen: View {
    
    let row = [
        GridItem(.fixed(Constants.secondRowSwitchSearchScreenGridItem))]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Избранные плейлисты")
                    .frame(alignment: .leading)
                    .font(.system(size: Constants.secondRowSwitchSearchScreenTextSize, weight: .bold, design: .default))
            }
            .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
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
                .frame(height: Constants.secondRowSwitchSearchScreenHGridFrame)
            }
            Spacer()
                .frame(height: Constants.secondRowSwitchSearchScreenSpacerFrameHeight)
        }
    }
}

struct SecondRowSwitchSearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondRowSwitchSearchScreen()
    }
}
