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

struct EventScreen: View {
    var collection: Collection
    
    var body: some View {
        ZStack {
            ColorConstants.background.ignoresSafeArea(.all)
            
            VStack {
                // MARK: title and image
                collection.image
                    .resizable()
                    .scaledToFit()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 120, alignment: .center)
                    .clipped()
                    .overlay(
                        ZStack {
                            LinearGradient(gradient:
                                            Gradient(colors: [.black.opacity(0), .black]),startPoint: .top,endPoint: .bottom)
                            VStack {
                                Spacer()
                                Text("Events")
                                    .font(.system(.largeTitle))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.primary)
                                Text("\(collection.title) | \(collection.period)")
                                    .foregroundColor(ColorConstants.primary)
                                    .padding(.bottom)
                            }
                        }
                    )
                
                // MARK: list
                EventList(events: collection.events)
                    .navigationTitle(collection.title)
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
