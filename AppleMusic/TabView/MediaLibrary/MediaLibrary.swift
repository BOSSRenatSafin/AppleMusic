//
//  MediaLibrary.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 07.03.2022.
//

import SwiftUI

struct MediaLibrary: View {
    
    @State var isEditing = true
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                if isEditing {
                    Text("Ищите совю музыку?")
                        .bold()
                        .font(.title)
                    Text("Здесь появится купленная вами в iTunes Store музыка.")
                        .font(.callout)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .environment(\.editMode, .constant(EditMode.inactive))
                } else {
                    MediaEditing()
                        .environment(\.editMode, .constant(EditMode.active))
                }
                Spacer()
                MiniPlayer()
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: Button(action: {
                isEditing.toggle()
            }, label: {
                if isEditing {
                    Text("Править")
                } else {
                    Text("Готово")
                }
            }))
            .accentColor(.red)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MediaLibrary()
    }
}
