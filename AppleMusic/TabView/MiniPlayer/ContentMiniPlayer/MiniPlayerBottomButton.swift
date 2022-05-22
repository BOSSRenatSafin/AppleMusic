//
//  MiniPlayerBottomButton.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.05.2022.
//

import SwiftUI

struct MiniPlayerBottomButton: View {
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        HStack(spacing: Constants.miniPlayerButtonBottomSpacing) {
            
            Button(action: {}) {
                Image(systemName: "arrow.up.message")
                    .font(.title2)
                    .foregroundColor(.primary)
            }
            
            Button(action: {}) {
                Image(systemName: "airplayaudio")
                    .font(.title2)
                    .foregroundColor(.primary)
            }
            
            Button(action: {}) {
                Image(systemName: "list.bullet")
                    .font(.title2)
                    .foregroundColor(.primary)
            }
        }
        .padding(.bottom, safeArea?.bottom == Constants.miniPlayerZero ? Constants.miniPlayerButtonBottomPadding : safeArea?.bottom)
    }
}


