//
//  ProfileView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//

import SwiftUI

struct ProfileView: View {
    
//    private let colorsForBackground = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
    
    @StateObject var background = Background()
      
    var body: some View {
        
        
        ZStack {
            
            RadialGradient(gradient: background.lightmode,
                           center: UnitPoint.center,
                           startRadius: 0,
                           endRadius: 500).ignoresSafeArea(.all)
           

            VStack {
            
                Image("i_creek_selfie")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape( Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color("Shadow"), lineWidth: 5))
                    .padding(10)
                Spacer()
                Spacer()

            }
           
            VStack {
            
                VStack {
                    Spacer()
                  Spacer()
                    Text(" Brandon E Fields ")
                        .font(.system(size: 30))
                        .underline()
                        .foregroundColor(Color("Shadow"))
                        .padding(20)
                    Text("Sept-19-1986")
                        .foregroundColor(Color("Shadow"))
                        .padding(1)
                    Text("GitHub")
                        .foregroundColor(Color("Shadow"))
                        .padding(1)
                    Text("LinkedIn")
                        .foregroundColor(Color("Shadow"))
                        .padding(1)
                    Text("Portfolio")
                        .foregroundColor(Color("Shadow"))
                        .padding(1)
                    Text("Instagram")
                        .foregroundColor(Color("Shadow"))
                        .padding(1)
                    Spacer()
                }
                
            }
            
        }

    }
   
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

