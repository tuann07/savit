//
//  TimelineList.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 31/07/2022.
//

import SwiftUI

struct EventList: View {
    var events: [Event]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach(events) { event in
                    NavigationLink {
                        DetailScreen(event: event)
                    } label: {
                        EventPill(event: event)
                    }
                }
            }.padding(.horizontal)
        }
    }
}

struct TimelineList_Previews: PreviewProvider {
    static var previews: some View {
        EventList(events: collections[0].events)
    }
}
