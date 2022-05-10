//
//  SwitchSearchScreenView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 02.05.2022.
//

import SwiftUI

struct SwitchSearchScreenView: View {
    var body: some View {
        GeometryReader {geometry in
            ZStack(alignment: .bottom) {
                ScrollView(showsIndicators: false) {
                    FirstRowSwitchSearchScreen()
                    SecondRowSwitchSearchScreen()
                }
            }
        }
    }
}

struct SwitchSearchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchSearchScreenView()
    }
}
