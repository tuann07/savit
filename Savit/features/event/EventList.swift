/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Nguyen Anh Tuan
 ID: 3817907
 Created  date: 31/07/2022
 Last modified: 06/08/2022
 Acknowledgement:
*/

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
