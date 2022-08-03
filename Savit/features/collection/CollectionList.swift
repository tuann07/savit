//
//  CollectionList.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

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
