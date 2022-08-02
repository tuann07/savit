//
//  DetailScreen.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI
import CoreLocation

struct DetailScreen: View {
    var body: some View {
        TabView {
            ZStack {
                ColorConstants.background.ignoresSafeArea()
                
                VStack {
                    HStack {
                        Text("Lorem ipsum dolor sit amet.")
                            .fontWeight(.bold)
                            .padding([.top, .leading])
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eleifend, leo sed dapibus blandit, enim neque pretium enim, non ornare ex quam sed tortor. Sed porta erat vel viverra mattis. Praesent molestie placerat risus ac fermentum. Phasellus vel auctor purus, at facilisis mi. Curabitur vitae urna et lectus convallis fringilla. Ut in blandit est. Nulla mi enim, posuere quis lacus nec, pellentesque viverra lacus.
                            """)
                        .font(.system(size: 14))
                        .padding([.top, .leading])
                        Spacer()
                    }
                    
                    HStack {
                        Text("""
                            Aliquam a pharetra tortor, sit amet tincidunt tortor. Aliquam lacinia nunc quis sollicitudin gravida. Sed quis iaculis leo, sed ullamcorper quam. Phasellus mollis magna non ultricies placerat.
                            """)
                        .font(.system(size: 14))
                        .padding([.top, .leading])
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
                
                MapView(coordinate: CLLocationCoordinate2D(
                    latitude: 9.768860480547627,
                    longitude: 105.56465951247152
                )).edgesIgnoringSafeArea(.top)
            }
            .tabItem {
                Image(systemName: "map.fill")
                Text("Map")
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}
