//
//  RadioVStack.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 10.04.2022.
//

import SwiftUI

struct RadioVStack: View {
    var colum = [
        GridItem(.fixed(100))]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: colum) {
                //Rectangle()
                Text("Станции")
                    .font(.title)
                    .frame(width: 400, height: 50, alignment: .leading)
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 400, height: 200)
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 400, height: 200)
            }
        }
    }
}

struct RadioVStack_Previews: PreviewProvider {
    static var previews: some View {
        RadioVStack()
    }
}
