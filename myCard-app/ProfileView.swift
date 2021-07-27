//
//  ProfileView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Image("i_creek_selfie")
                .resizable()
                .frame(width: 300, height: 300)
                .clipShape( Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color("Shadow"), lineWidth: 5))
                .padding(50)
            Text(" Brandon E Fields ")
                .font(.system(size: 30))
                .underline()
                .foregroundColor(Color("Background"))
                .padding(5)
            Text("Sept-19-1986")
                .foregroundColor(Color("Background"))
                .padding(1)
            Text("GitHub")
                .foregroundColor(Color("Background"))
                .padding(1)
            Text("LinkedIn")
                .foregroundColor(Color("Background"))
                .padding(1)
            Text("Portfolio")
                .foregroundColor(Color("Background"))
                .padding(1)
            Text("Instagram")
                .foregroundColor(Color("Background"))
                .padding(1)
           
                            
            Spacer()
            Spacer()
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("Background"), Color("DarkBackground")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea( .all)
        
            
          
    }
   
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

