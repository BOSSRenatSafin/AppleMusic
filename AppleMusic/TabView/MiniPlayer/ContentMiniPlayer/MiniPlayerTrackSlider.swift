//
//  MiniPlayerTrackSlider.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.05.2022.
//

import SwiftUI

struct MiniPlayerTrackSlider: View {
    @Binding var trackSlider: CGFloat
    
    var body: some View {
        HStack {
            Slider(value: $trackSlider)
        }
        .padding(.horizontal)
    }
}


