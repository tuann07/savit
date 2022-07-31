//
//  TimelineList.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 31/07/2022.
//

import SwiftUI

struct TimelineList: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                Group {
                    NavigationLink {
                        DetailScreen()
                    } label: {
                        TimelinePill()
                    }
                    NavigationLink {
                        DetailScreen()
                    } label: {
                        TimelinePill()
                    }
                    NavigationLink {
                        DetailScreen()
                    } label: {
                        TimelinePill()
                    }
                    NavigationLink {
                        DetailScreen()
                    } label: {
                        TimelinePill()
                    }
                    NavigationLink {
                        DetailScreen()
                    } label: {
                        TimelinePill()
                    }
                }
            }
        }
    }
}

struct TimelineList_Previews: PreviewProvider {
    static var previews: some View {
        TimelineList()
    }
}
