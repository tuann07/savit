//
//  CollectionCard.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct CollectionCard: View {
    var collection: Collection
    
    let width: CGFloat = 300
    let height: CGFloat = 400
    let radius: CGFloat = 10
    
    var body: some View {
        collection.image
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height, alignment: .center)
            .overlay(
                ZStack {
                    LinearGradient(gradient:
                                    Gradient(colors: [.white.opacity(0), ColorConstants.secondary.opacity(0), ColorConstants.secondary.opacity(0.9)]),startPoint: .top,endPoint: .bottom)
                    
                    VStack {
                        Spacer()
                        Group {
                            Text(collection.title)
                                .fontWeight(.bold)
                            Text(collection.period)
                                .font(.system(size: 14))
                        }.foregroundColor(.white.opacity(0.9))
                    }.padding(.bottom)
                })
            .cornerRadius(radius)
    }
}

struct CollectionCard_Previews: PreviewProvider {
    static var previews: some View {
        CollectionCard(collection: collections[0])
    }
}
