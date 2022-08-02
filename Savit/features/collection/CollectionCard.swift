//
//  CollectionCard.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct CollectionCard: View {
    var image: Image
    var title: String
    var period: String
    var width: CGFloat = 300
    var height: CGFloat = 400
    var radius: CGFloat = 10
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height, alignment: .center)
            .overlay(
                ZStack {
                    LinearGradient(gradient:
                                    Gradient(colors: [.white.opacity(0), .white.opacity(0), ColorConstants.secondary.opacity(0.9)]),startPoint: .top,endPoint: .bottom)
                    
                    VStack {
                        Spacer()
                        Group {
                            Text(title)
                                .fontWeight(.bold)
                            Text(period)
                                .font(.system(size: 14))
                        }.foregroundColor(.white.opacity(0.9))
                    }.padding(.bottom)
                })
            .cornerRadius(radius)
    }
}

struct CollectionCard_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCard(image: Image("ho-chi-minh"), title: "Ho Chi Minh", period: "1900 - 1920")
    }
}
