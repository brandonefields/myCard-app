//
//  InsideAppHomeView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//



import SwiftUI

struct InsideAppHomeView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Image("miiCard_logo 2")
                .resizable()
                .frame(width: 300, height: 300)
                .clipShape( Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color("Shadow"), lineWidth: 5))
                .padding(50)
            Text("Welcome Home")
                .font(.system(size: 30))
                .foregroundColor(Color("Background"))
                .padding(5)
                
                            
            Spacer()
            Spacer()
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("Background"), Color("DarkBackground")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea( .all)
        
            
          
    }
   
}

struct InsideAppHomeView_Previews: PreviewProvider {
    static var previews: some View {
        InsideAppHomeView()
    }
}

