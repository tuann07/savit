/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Nguyen Anh Tuan
 ID: 3817907
 Created  date: 30/07/2022
 Last modified: 06/08/2022
 Acknowledgement:
*/

import SwiftUI

struct EventPill: View {
    var event: Event
    
    let radius: CGFloat = 10
    let height: CGFloat = 70
    
    var body: some View {
        RoundedRectangle(cornerRadius: radius)
            .fill(ColorConstants.secondary)
            .frame(height: height, alignment: .center)
            .overlay(
                VStack {
                    HStack {
                        RoundedRectangleAt(
                            width: 220, height: height / 2,
                            radius: radius, tl: true, tr: false, br: true, bl: false,
                            bgColor: ColorConstants.tertiary,
                            text: Text(event.period)
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
                            Text(event.title)
                                .padding(.bottom, 10.0)
                                .foregroundColor(.black.opacity(0.8))
                        )
                }
            )
    }
}

struct TimelinePill_Previews: PreviewProvider {
    static var previews: some View {
        EventPill(event: collections[0].events[0])
    }
}
