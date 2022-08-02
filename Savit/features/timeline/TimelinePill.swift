//
//  TimelinePill.swift
//  Savit
//
//  Created by Tuan Nguyen Anh on 30/07/2022.
//

import SwiftUI

struct TimelinePill: View {
    let radius: CGFloat = 10
    let height: CGFloat = 70
    let width: CGFloat = 330
    
    var body: some View {
        RoundedRectangle(cornerRadius: radius)
            .fill(ColorConstants.secondary)
            .frame(width: width, height: height, alignment: .center)
            .overlay(
                VStack {
                    HStack {
                        RoundedRectangleAt(
                            width: width * 2/3, height: height / 2,
                            radius: radius, tl: true, tr: false, br: true, bl: false,
                            bgColor: ColorConstants.tertiary,
                            text: Text("1900 - 1920")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                        )
                        
                        Spacer()
                    }
                    
                    Spacer()
                    
                    Rectangle()
                        .fill(.white.opacity(0))
                        .overlay(
                            Text("Viet Nam")
                                .fontWeight(.bold)
                                .padding(.bottom, 10.0)
                                .foregroundColor(.black.opacity(0.8))
                        )
                }
            )
    }
}

struct TimelinePill_Previews: PreviewProvider {
    static var previews: some View {
        TimelinePill()
    }
}
