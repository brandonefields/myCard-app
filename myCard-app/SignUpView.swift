//
//  SignUpView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//


import SwiftUI

struct SignUpView: View {
    
    @State private var username: String = ""
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: NewHomeView()) {
                
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
                    
                    Text("Back To Home")
                        .padding(20)
                        .background(Color("Background"))
                        .cornerRadius( 3)
                    
                }
                
            }
            .navigationTitle("Back")
        }
    }
}

//struct BackToHome: View {
//    var body: some View {
//        Text("Home")
//            .foregroundColor(.white)
//            .frame(width: 150, height: 50)
//            .background(Color("PrimaryColor"))   .cornerRadius(15)
//            .padding(.top, 10)
//            .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
//    }
//}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
