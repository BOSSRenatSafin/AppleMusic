//
//  RadioVStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 10.04.2022.
//

import SwiftUI

struct RadioVStack: View {
    var colum = [
        GridItem(.fixed(440))]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: colum, alignment: .leading) {
                HStack {
                    Spacer()
                        .frame(width: 25)
                    Text("Станции")
                        .font(.title)
                }
                ForEach(dataVStack) {dataVStack in
                    HStack {
                        Spacer()
                            .frame(width: 12)
                        Image(dataVStack.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .cornerRadius(5)
                        VStack(alignment: .leading) {
                            Text(dataVStack.firstTitle)
                                .frame(height: 10)
                            Text(dataVStack.secondTitle)
                                .foregroundColor(.secondary)
                        }
                        .frame(width: 280, height: 40, alignment: .leading)
                    }
                    .frame(width: 420, height: 100)
                }
            }
        }
    }
}

struct RadioVStack_Previews: PreviewProvider {
    static var previews: some View {
        RadioVStack()
    }
}
