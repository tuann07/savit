//
//  CollectionList.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct CollectionList: View {
    var body: some View {
        
        ScrollView(.horizontal) {
            HStack {
                NavigationLink{
                    TimelineScreen()
                } label: {
                    CollectionCard(image: Image("vo-nguyen-giap"), title: "Vo Nguyen Giap", period: "3000 - 3100")
                }
                NavigationLink{
                    TimelineScreen()
                } label: {
                    CollectionCard(image: Image("ho-chi-minh"), title: "Ho Chi Minh", period: "3000 - 3100")
                }
                NavigationLink{
                    TimelineScreen()
                } label: {
                    CollectionCard(image: Image("ton-that-tung"), title: "Ton That Tung", period: "3000 - 3100")
                }
            }
        }
        
    }
}

struct CollectionList_Previews: PreviewProvider {
    static var previews: some View {
        CollectionList()
    }
}
