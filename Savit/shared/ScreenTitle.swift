//
//  Title.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct ScreenTitle: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.system(.largeTitle))
            .fontWeight(.bold)
            .foregroundColor(ColorConstants.primary)
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTitle(text: "Hello World")
    }
}
