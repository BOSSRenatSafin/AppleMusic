//
//  FirstRowSwitchSearchScreen.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 02.05.2022.
//

import SwiftUI

struct FirstRowSwitchSearchScreen: View {
    
    var row = [
        GridItem(.fixed(Constants.firstRowSwitchSearchScreenGridItem))]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Пространственное аудио")
                    .font(.system(size: Constants.serachViewFirstRowSwitchSearchScreenTextFountSize, weight: .bold, design: .default))
                    .lineLimit(Constants.serachViewFirstRowSwitchSearchScreenTextLineLimit)
                    .frame(height: Constants.serachViewFirstRowSwitchSearchScreenTextFrame)
            }
            .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                Divider()
                Spacer()
                    .frame(height: Constants.firstRowSwitchSearchScreenSpacer)
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
    }
}

struct FirstRowSwitchSearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstRowSwitchSearchScreen()
    }
}
