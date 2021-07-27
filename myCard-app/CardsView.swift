//
//  CardsView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//

import SwiftUI

struct FittedImage: View {
    let imageName: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }.frame(width: width, height: height)
    }
}



struct CardsView: View {
    var body: some View {
        
        
        
        VStack {
            Spacer()
            FittedImage(imageName: "casual_b_card", width: 400, height: 200)
                .padding(10)
                .cornerRadius(5)
                .shadow(radius: 10)
            
            FittedImage(imageName: "biz_caj_card", width: 400, height: 200)
                .padding(10)
                .cornerRadius(5)
                .shadow(radius: 10)
            
            FittedImage(imageName: "pro_card", width: 400, height: 200)
                .padding(10)
                .cornerRadius(5)
                .shadow(radius: 10)
            Spacer()
            Spacer()
            
        }
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("Background"), Color("DarkBackground")]), startPoint: .top, endPoint: .bottom))
            .edgesIgnoringSafeArea( .all)
        
        
    }
    
}


struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
