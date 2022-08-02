//
//  TimelineScreen.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct TimelineScreen: View {
    var body: some View {
        ZStack {
            ColorConstants.background.ignoresSafeArea()
            
            VStack {
                TimelineList()
                    .navigationTitle("Timeline")
            }
        }
    }
}

struct TimelineScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimelineScreen()
    }
}
