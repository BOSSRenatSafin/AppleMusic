//
//  MainSearchScreen .swift
//  AppleMusic
//
//  Created by Ренат Сафин on 01.05.2022.
//

import SwiftUI

struct MainSearchScreen: View {
    
    var colums = [
        GridItem(.flexible(), spacing: Constants.mainSearchScreenGridItemSpacing),
        GridItem(.flexible())
    ]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                            .frame(width: Constants.mainSearchScreenGridItemSpacingSpacerWidth)
                        Text("Поиск по категориям")
                            .font(.system(size: Constants.mainSearchScreenGridItemSpacingTextSize, weight: .bold, design: .default))
                    }
                    Spacer()
                        .frame(height: Constants.mainSearchScreenGridItemSpacingSpacerHeight)
                    HStack {
                        Spacer()
                        LazyVGrid(columns: colums, alignment: .center, spacing: Constants.mainSearchScreenGridItemSpacingLazyVGridSpacing) {
                            ForEach(DataMainSearchScreen.dataMainSearchScreen) {cell in
                                NavigationLink {
                                    SwitchSearchScreenView()
                                } label: {
                                    Image(cell.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(Constants.mainSearchScreenGridItemSpacingImageCornerRadius)
                                        .frame(width: geometry.size.width * Constants.mainSearchScreenGridItemSpacingImageFrameWidth, height: geometry.size.width * Constants.mainSearchScreenGridItemSpacingImageFrameHeight)
                                }
                                
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

struct MainSearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainSearchScreen()
    }
}
