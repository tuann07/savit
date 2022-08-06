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

struct CollectionList: View {
    var collections: [Collection]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(collections) { collection in
                    NavigationLink{
                        EventScreen(collection: collection)
                    } label: {
                        CollectionCard(collection: collection)
                    }
                }
            }.padding(.horizontal)
        }
    }
}

struct CollectionList_Previews: PreviewProvider {
    static var previews: some View {
        CollectionList(collections: collections)
    }
}
