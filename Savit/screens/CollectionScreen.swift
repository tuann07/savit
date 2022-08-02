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
