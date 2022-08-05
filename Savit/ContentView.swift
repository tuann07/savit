//
//  ContentView.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isWelcome: Bool = true
    
    var body: some View {
        if isWelcome {
            WelcomeScreen(active: $isWelcome)
        } else {
            CollectionScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
