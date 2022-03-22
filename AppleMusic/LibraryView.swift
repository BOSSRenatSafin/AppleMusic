//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 07.03.2022.
//

import SwiftUI

struct LibraryView: View {
    
    @State var isEditing = true
    
    var body: some View {
        NavigationView {
            TabView {
                VStack {
                    Spacer()
                    if isEditing {
                        Text("Ищите совю музыку?")
                            .bold()
                            .font(.title)
                        Text("Здесь появится купленная вами в iTunes Store музыка.")
                            .multilineTextAlignment(.center)
                    } else {
                        MediaEditing()
                    }
                    Spacer()
                    VStack {
                        HStack(spacing: 15) {
                            Image(systemName: "person")
                                .resizable()
                                .frame(width: 50, height: 50)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Не исполняется")
                                Text("Исполнитель")
                                    .foregroundColor(.red)
                            }
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "play.fill")
                                    .font(.title)
                                    .foregroundColor(.black)
                            }
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "forward.fill")
                                    .font(.title)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(.all)
                        .background(Color.black.opacity(0.05))
                    }
                }
                .tabItem {
                    Image("collection.music")
                        .renderingMode(.template)
                    Text("Медиатека")
                }
                
                Text("Радио")
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                
                Text("Поиск")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
                    .background(Color.black.opacity(0.05))
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing: Button(action: {
                isEditing.toggle()
            }, label: {
                if isEditing {
                    Text("править")
                } else {
                    Text("готово")
                }
            }))
            .accentColor(.red)
            
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
