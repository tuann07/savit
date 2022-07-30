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
    
    var body: some View {
        ZStack {
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 400, alignment: .center)
                .overlay(
                    Rectangle().fill(
                        LinearGradient(gradient:
                                        Gradient(colors: [.white.opacity(0), ColorConstants.secondary.opacity(0.9)]),startPoint: .top,endPoint: .bottom))
                )
                .cornerRadius(10)
            
            VStack {
                Spacer()
                Group {
                    Text(title)
                        .fontWeight(.bold)
                    Text(period)
                        .font(.system(size: 14))
                }.foregroundColor(.white.opacity(0.9))
            }.padding(.bottom)
            
        }.frame(width: 300, height: 400, alignment: .center)
        
    }
}

struct CollectionCard_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCard(image: Image("ho-chi-minh"), title: "Ho Chi Minh", period: "1900 - 1920")
    }
}
