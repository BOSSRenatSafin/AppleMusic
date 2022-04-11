//
//  RadioView.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 07.03.2022.
//

import SwiftUI

struct RadioView: View {
    
    var row = [
        GridItem(.fixed(400))]
    
    var body: some View {
        NavigationView {
            ScrollView {
                RadioHStack()
                RadioVStack()
            }
            .navigationTitle("Радио")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
