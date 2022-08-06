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

struct WelcomeScreen: View {
    @Binding var active: Bool
    
    var body: some View {
        ZStack{
            ColorConstants.background.ignoresSafeArea(.all)
            
            VStack(spacing: 20){
                Spacer()
                
                VStack(spacing: 0) {
                    Text("Savit")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(ColorConstants.primary)
                    
                    Text("Keep your memories safe")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(ColorConstants.primary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }
                
                Spacer()
                
                Button(action: {
                    active = false
                }, label: {
                    Capsule()
                        .fill(ColorConstants.secondary)
                        .padding(16.0)
                        .frame(height: 95)
                        .overlay(Text("Get Started")
                            .font(.system(.title3))
                            .fontWeight(.bold)
                            .foregroundColor(.white))
                })
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen(active: .constant(true))
    }
}
