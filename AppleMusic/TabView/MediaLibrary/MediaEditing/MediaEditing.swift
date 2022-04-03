//
//  MediaEditing.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.03.2022.
//

import SwiftUI

struct MediaEditing: View {
    
    @State private var multiSelection = Set<String>()
    
    var body: some View {
        List(selection: $multiSelection) {
            ForEach (cells) { cells in
                HStack{
                    Image(systemName: cells.nameImage)
                        .foregroundColor(.red)
                    Text(cells.name)
                }
            }
            .onMove(perform: move)
        }
        .listStyle(.inset)
    }
    
    //MARK: Move Row
    func move(from source: IndexSet, to destinstion: Int) {
        for index in cells {
            cells.move(fromOffsets: source, toOffset: destinstion)
        }
    }
}

struct MediaEditing_Previews: PreviewProvider {
    static var previews: some View {
        MediaEditing()
    }
}
