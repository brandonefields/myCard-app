//
//  SignUpView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//


import SwiftUI

struct SignUpView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State private var username: String = ""
    
    @State  private var colorsForBackground = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
    
    var body: some View {
        ZStack {
            
            RadialGradient(gradient: colorsForBackground,
                           center: UnitPoint.center,
                           startRadius: 0,
                           endRadius: 500)
                .ignoresSafeArea(.all)
                .opacity(0.8)
            
            VStack {
                
                Spacer()
                
                TextField("First Name", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 27.0)
                
                TextField("Last Name", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 27.0)
                
                TextField("Birth Date", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 27.0)
                
                TextField("First URL Link", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal, 27.0)
                Text("Add Another URL")
                    .foregroundColor(Color("Shadow"))
                
                Spacer()
                
//                Button(action: {
//                    //asdfasdf
//                    withAnimation {
//                        viewRouter.currentPage = .page1
//                }
//            })
//                Text("Back")
//                    .foregroundColor(.white)
//                    .frame(width: 130, height: 50)
//                    .background(Color("PrimaryColor"))
//                    .cornerRadius(15)
//                    .padding(.top, 20)
//                    .padding(4)
//                    .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
//
            }
        }
                
                
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
