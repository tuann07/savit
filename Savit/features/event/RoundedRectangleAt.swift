/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Nguyen Anh Tuan
 ID: 3817907
 Created  date: 31/07/2022
 Last modified: 06/08/2022
 Acknowledgement:
*/

import SwiftUI

// create a rectangle with only some, or all rounded corners
struct RoundedRectangleAt: View {
    var width: CGFloat
    var height: CGFloat
    var radius: CGFloat
    var tl: Bool = false
    var tr: Bool = false
    var br: Bool = false
    var bl: Bool = false
    var bgColor: Color
    var text: Text
    
    var body: some View {
        RoundedRectangle(cornerRadius: radius)
            .fill(bgColor)
            .frame(width: width, height: height, alignment: .center)
            .overlay(
                ZStack {
                    VStack {
                        HStack {
                            if !tl {
                                Rectangle()
                                    .fill(bgColor)
                                    .frame(width: radius, height: radius)
                            }
                            
                            Spacer()
                            
                            if !tr {
                                Rectangle()
                                    .fill(bgColor)
                                    .frame(width: radius, height: radius)
                            }
                            
                        }
                        
                        Spacer()
                        
                        HStack {
                            if !bl {
                                Rectangle()
                                    .fill(bgColor)
                                    .frame(width: radius, height: radius)
                            }
                            
                            Spacer()
                            
                            if !br {
                                Rectangle()
                                    .fill(bgColor)
                                    .frame(width: radius, height: radius)
                            }
                        }
                    }
                    
                    text
                }
            )
    }
}

struct RoundedRectangleAt_Previews: PreviewProvider {
    static var previews: some View {
        RoundedRectangleAt(
            width: 150, height: 50, radius: 20,
            tl: true, tr: false, br: true, bl: false,
            bgColor: ColorConstants.secondary,
            text: Text("Hello").foregroundColor(.white).bold())
    }
}
