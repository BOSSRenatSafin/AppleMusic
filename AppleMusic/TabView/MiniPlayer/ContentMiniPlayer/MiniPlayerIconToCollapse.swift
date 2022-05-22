//
//  MiniPlayerIconToCollapse.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 22.05.2022.
//

import SwiftUI

struct MiniPlayerIconToCollapse: View {
    @Binding var expand: Bool
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        Capsule()
            .fill(Color.gray)
            .frame(width: expand ? Constants.miniPlayerCapsulFrame : Constants.miniPlayerCapsulFrameZero, height: expand ? Constants.miniPlayerCapsuleFrameHeight : Constants.miniPlayerCapsulFrameZero)
            .opacity(expand ? Constants.miniPlayerCapsuleOpacity : Constants.miniPlayerCapsuleOpacityZero)
            .padding(.top,expand ? safeArea?.top : Constants.miniPlayerZero)
            .padding(.vertical, expand ? Constants.miniPlayerCapsulePadding : Constants.miniPlayerZero)
    }
}

