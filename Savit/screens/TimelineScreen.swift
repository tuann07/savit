//
//  TimelineScreen.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct TimelineScreen: View {
    var collection: Collection
    
    var body: some View {
        ZStack {
            ColorConstants.background.ignoresSafeArea()
            
            VStack {
                Text("Timeline")
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.primary)
                Text("\(collection.title) - \(collection.period)")
                    .foregroundColor(ColorConstants.primary)
                    .padding(.bottom)
                
                TimelineList(timelines: collection.timelines)
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct TimelineScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimelineScreen(collection: collections[0])
    }
}
