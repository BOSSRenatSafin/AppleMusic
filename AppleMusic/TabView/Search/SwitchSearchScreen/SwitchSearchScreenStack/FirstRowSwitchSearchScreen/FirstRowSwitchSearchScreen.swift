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
                FirstRowSwitchSearchScreenText()
            }
        }
    }
}

struct FirstRowSwitchSearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstRowSwitchSearchScreen()
    }
}
