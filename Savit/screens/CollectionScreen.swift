//
//  CollectionScreen.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct CollectionScreen: View {
    var body: some View {
        ZStack {
            ColorConstants.background.ignoresSafeArea()
            
            VStack {
                ScreenTitle(text: "Your Collections").padding(.top)
                
                Spacer()
                Divider()
                
                CollectionList()
                
                Divider()
                Spacer()
                
                Text("Save it. Forget it. We remind you.")
                    .foregroundColor(ColorConstants.primary)
                    .padding(.bottom)
            }
        }
    }
}

struct CollectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        CollectionScreen()
    }
}
