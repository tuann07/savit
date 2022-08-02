//
//  TimelineList.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 31/07/2022.
//

import SwiftUI

struct TimelineList: View {
    var timelines: [Timeline]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach(timelines) { timeline in
                    NavigationLink {
                        DetailScreen(timeline: timeline)
                    } label: {
                        TimelinePill(timeline: timeline)
                    }
                }
            }.padding(.horizontal)
        }
    }
}

struct TimelineList_Previews: PreviewProvider {
    static var previews: some View {
        TimelineList(timelines: collections[0].timelines)
    }
}
