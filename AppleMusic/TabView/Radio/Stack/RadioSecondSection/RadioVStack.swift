//
//  RadioVStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 10.04.2022.
//

import SwiftUI

struct RadioSecondSection: View {
    
    var colum = [
        GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: colum, alignment: .leading) {
                HStack {
                    Spacer()
                        .frame(width: Constants.radioVStackHStackSpacer)
                    Text("Станции")
                        .font(.system(size: Constants.radioVStackTextFountSize, weight: .bold, design: .default))
                }
                ForEach(RadioDataSecondSection.radioDataVStack) {cell in
                    HStack {
                        Image(cell.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: Constants.radioVStackImageWidth, height: Constants.radioVStackImageHeight)
                            .cornerRadius(Constants.radioVStackImageCornerRadius)
                        VStack(alignment: .leading) {
                            Text(cell.firstTitle)
                                .frame(height: Constants.radioVStackVStackTextHeight)
                            Text(cell.secondTitle)
                                .foregroundColor(.secondary)
                        }
                    }
                    Divider()
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct RadioVStack_Previews: PreviewProvider {
    static var previews: some View {
        RadioSecondSection()
    }
}
