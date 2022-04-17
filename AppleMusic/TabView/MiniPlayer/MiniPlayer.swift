//
//  MiniPlayer.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 07.03.2022.
//

import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        VStack {
            HStack(spacing: Constants.hStackSpacing) {
                Image("01")
                    .resizable()
                    .frame(width: Constants.imageFrameWidth, height: Constants.imgeFrameHeight)
                    .cornerRadius(Constants.imgeCornerRadius)
                
                VStack(alignment: .leading, spacing: Constants.vStackSpacing) {
                    Text("Годы как вода")
                    Text("Мурат Тхагалегов")
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
            .background(Color.init("MiniPlayerBackground"))
            .opacity(Constants.miniPlayerOpacity)
        }
    }
}
    
struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
