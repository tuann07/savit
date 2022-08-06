/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Nguyen Anh Tuan
 ID: 3817907
 Created  date: 30/07/2022
 Last modified: 06/08/2022
 Acknowledgement:
*/

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
