//
//  RadioView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 07.03.2022.
//

import SwiftUI

struct RadioView: View {
    
    var row = [
        GridItem(.fixed(Constants.radioViewGridItem))]
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                NavigationView {
                    ScrollView(showsIndicators: false) {
                        RadioFirstSection()
                            .frame(width: geometry.size.width * Constants.radioViewHStackWidth)
                        RadioSecondSection()
                            .frame(width: geometry.size.width * Constants.radioViewVStackWidth)
                    }
                    .padding(.horizontal)
                    .navigationTitle("Радио")
                }
            }
            .padding(.bottom, 80)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
