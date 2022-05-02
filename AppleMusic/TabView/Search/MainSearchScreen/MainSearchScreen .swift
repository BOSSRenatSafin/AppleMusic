//
//  MainSearchScreen .swift
//  AppleMusic
//
//  Created by Ренат Сафин on 01.05.2022.
//

import SwiftUI

struct MainSearchScreen: View {
    
    var colums = [
        GridItem(.flexible(), spacing: -10),
        GridItem(.flexible())
    ]
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    HStack {
                        Spacer()
                            .frame(width: 20)
                        Text("Поиск по категориям")
                            .font(.system(size: 20, weight: .bold, design: .default))
                    }
                    Spacer()
                        .frame(height: 1)
                    HStack {
                        Spacer()
                        LazyVGrid(columns: colums, alignment: .center, spacing: 3) {
                            ForEach(DataMainSearchScreen.dataMainSearchScreen) {cell in
                                Image(cell.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(10)
                                    .frame(width: geometry.size.width * 0.43, height: geometry.size.width * 0.32)
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
