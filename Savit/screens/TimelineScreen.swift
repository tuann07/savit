//
//  TimelineScreen.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct TimelineScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                ColorConstants.background.ignoresSafeArea()
                
                VStack {
                    ScreenTitle(text: "Timeline").padding(.vertical)
                    
                    TimelineList()
                }
            }
        }
    }
}

struct TimelineScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimelineScreen()
    }
}
