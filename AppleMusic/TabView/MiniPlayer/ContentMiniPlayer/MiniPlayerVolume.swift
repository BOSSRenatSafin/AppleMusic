//
//  MiniPlayerVolume.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.05.2022.
//

import SwiftUI

struct MiniPlayerVolume: View {
    @Binding var volume: CGFloat
    var body: some View {
        HStack(spacing: Constants.miniPlayerSliderSpacing) {
            Image(systemName: "speaker.fill")
            Slider(value: $volume)
            Image(systemName: "speaker.wave.2.fill")
        }
        .padding()
    }
}

