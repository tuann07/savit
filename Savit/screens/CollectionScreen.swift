//
//  CollectionScreen.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct CollectionScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                ColorConstants.background.ignoresSafeArea()
                
                VStack {
                    CollectionList()
                        .navigationTitle("Your Collections")
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
