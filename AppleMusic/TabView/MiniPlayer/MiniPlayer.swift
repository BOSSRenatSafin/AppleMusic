//
//  MiniPlayer.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 07.03.2022.
//

import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "person")
                .resizable()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Не исполняется")
                Text("Исполнитель")
            }
            
            Spacer()
            
            Button(action: {
                print("Play")
            }, label: {
                Image(systemName: "play.fill")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Button(action: {
                print("Forward")
            }, label: {
                Image(systemName: "forward.fill")
                    .font(.title)
                    .foregroundColor(.black)
            })
        }
        .padding(.all)
        //.background(Color.black.opacity(0.05))
    }
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
