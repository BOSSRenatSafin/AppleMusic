//
//  RadioHStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 10.04.2022.
//

import SwiftUI

struct RadioHStack: View {
    
    var row = [
        GridItem(.fixed(340))]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: row, alignment: .center) {
                Spacer()
                    .frame(width: 12)
                ForEach(dataHStack) {dataHStack in
                    VStack(alignment: .leading) {
                        Text(dataHStack.firstTitle)
                            .foregroundColor(.secondary)
                        Text(dataHStack.secondTitle)
                        Text(dataHStack.thirdTitle)
                            .foregroundColor(.secondary)
                        Image(dataHStack.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct RadioHStack_Previews: PreviewProvider {
    static var previews: some View {
        RadioHStack()
    }
}
