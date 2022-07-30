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
                CollectionCard(image: Image("vo-nguyen-giap"), title: "Vo Nguyen Giap", period: "3000 - 3100")
                CollectionCard(image: Image("vo-nguyen-giap"), title: "Vo Nguyen Giap", period: "3000 - 3100")
                CollectionCard(image: Image("vo-nguyen-giap"), title: "Vo Nguyen Giap", period: "3000 - 3100")
            }
        }
    }
}

struct CollectionList_Previews: PreviewProvider {
    static var previews: some View {
        CollectionList()
    }
}
