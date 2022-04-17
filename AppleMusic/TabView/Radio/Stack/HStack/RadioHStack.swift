//
//  RadioHStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 10.04.2022.
//

import SwiftUI

struct RadioHStack: View {
    
    var row = [
        GridItem(.fixed(Constants.radioHStackGridItem))]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Divider()
            Spacer()
                .frame(height: Constants.radioHStackSpacer)
            LazyHGrid(rows: row, spacing: Constants.radioHStackGridSpacing) {
                ForEach(RadioDataHStack.radioDataHStack) {cell in
                    VStack(alignment: .leading) {
                        Text(cell.firstTitle)
                            .foregroundColor(.secondary)
                        Text(cell.secondTitle)
                        Text(cell.thirdTitle)
                            .foregroundColor(.secondary)
                        Image(cell.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(Constants.radioHStackImageCornerRadius)
                    }
                }
            }
            .frame(height: Constants.radioHStackGridFrame)
            Spacer()
                .frame(height: Constants.radioHStackSpacer)
            Divider()
        }
    }
}

struct RadioHStack_Previews: PreviewProvider {
    static var previews: some View {
        RadioHStack()
    }
}
