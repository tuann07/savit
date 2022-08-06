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

struct CollectionScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                ColorConstants.background.ignoresSafeArea(.all)
                
                VStack {
                    Text("Your Collections")
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .foregroundColor(ColorConstants.primary)
                        .padding(.top, 50.0)
                    
                    Spacer()
                    
                    CollectionList(collections: collections)
                        .navigationTitle("")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(true)
                    
                    Spacer()
                }
            }
        }
    }
}

struct CollectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        CollectionScreen()
    }
}
