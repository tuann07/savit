//
//  TimelineScreen.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct EventScreen: View {
    var collection: Collection
    
    var body: some View {
        ZStack {
            ColorConstants.background.ignoresSafeArea(.all)
            
            VStack {
                Text("Events")
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.primary)
                Text("\(collection.title) | \(collection.period)")
                    .foregroundColor(ColorConstants.primary)
                    .padding(.bottom)
                
                EventList(events: collection.events)
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct TimelineScreen_Previews: PreviewProvider {
    static var previews: some View {
        EventScreen(collection: collections[0])
    }
}
