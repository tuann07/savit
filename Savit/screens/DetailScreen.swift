/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Nguyen Anh Tuan
 ID: 3817907
 Created  date: 30/07/2022
 Last modified: 06/08/2022
 Acknowledgement:
*/

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
                            .foregroundColor(.black.opacity(0.9))
                            .padding()
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
                
                MapView(coordinate: event.locationCoordinate)
            }
            .tabItem {
                Image(systemName: "map.fill")
                Text("Map")
            }
        }
        .navigationTitle("\(event.title) | \(event.period)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(event: collections[0].events[0])
    }
}
