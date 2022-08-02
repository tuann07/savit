//
//  DetailScreen.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI
import CoreLocation

struct DetailScreen: View {
    var timeline: Timeline
    
    var body: some View {
        TabView {
            ZStack {
                ColorConstants.background.ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text(timeline.note)
                            .font(.system(size: 14))
                            .padding(.horizontal)
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Note")
            }
            
            ZStack {
                ColorConstants.background.ignoresSafeArea()
                
                MapView(coordinate: timeline.locationCoordinate).edgesIgnoringSafeArea(.top)
            }
            .tabItem {
                Image(systemName: "map.fill")
                Text("Map")
            }
        }
        .navigationTitle("\(timeline.title) - \(timeline.period)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(timeline: collections[0].timelines[0])
    }
}
