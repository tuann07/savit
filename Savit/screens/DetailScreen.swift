//
//  DetailScreen.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI
import CoreLocation

struct DetailScreen: View {
    var event: Event
    
    var body: some View {
        TabView {
            ZStack {
                ColorConstants.background.ignoresSafeArea(.all)
                
                VStack {
                    HStack {
                        Text(event.note)
                            .fontWeight(.light)
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
                
                MapView(coordinate: event.locationCoordinate).edgesIgnoringSafeArea(.top)
            }
            .tabItem {
                Image(systemName: "map.fill")
                Text("Map")
            }
        }
        .navigationTitle("\(event.title) - \(event.period)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(event: collections[0].events[0])
    }
}
