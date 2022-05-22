//
//  MiniPlayerButton.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.05.2022.
//

import SwiftUI

struct MiniPlayerButton: View {
    var body: some View {
        HStack(spacing: Constants.miniPlayerButtonHStackSpacing) {
            Button(action: {}) {
                Image(systemName: "backward.fill")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
            }
            Button(action: {}) {
                Image(systemName: "play.fill")
                    .font(.system(size: Constants.miniPlayerButtonPlaySize))
                    .foregroundColor(.primary)
            }
            Button(action: {}) {
                Image(systemName: "forward.fill")
                    .font(.largeTitle)
                    .foregroundColor(.primary)
            }
        }
        
        .padding()
    }
}


