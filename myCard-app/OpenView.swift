//
//  OpenView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/25/21.
//


import SwiftUI

struct OpenView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State private var password: String = ""
    @State private var username: String = ""
    
    var body: some View {
        VStack {

            Open()
            
            TextField("Username", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 27.0)
            
            SecureField("Password", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 27.0)
            
            HStack {
                
                Button(action: {
                    withAnimation {
                        viewRouter.currentPage = .page2
                    }
                }) {
                    SignUInButton()
                }
                
                Button(action: {
                    withAnimation {
                        viewRouter.currentPage = .page2
                    }
                }) {
                    SignUpButton()
                }
            }
         
        }
        .background(Image("b_card")
                        .resizable()
                        .frame(width: 820, height:1000, alignment: .center)
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.6)
        )

    }
  
}

struct Open : View {
    var body: some View {
       Text("Welcome To myCard")
        .fontWeight(.bold)
        .font(.title)
        .multilineTextAlignment(.center)
        .padding(.bottom, 20)
        .cornerRadius(5)
        .foregroundColor(Color("PrimaryColor"))
        .padding(.vertical,10)
        .padding(.horizontal, 60)
        .shadow(color: .gray, radius: 20, x: 0, y: 5)
    }
}

struct SignUpButton : View {
    var body: some View {
        Text("Sign Up")
            .foregroundColor(.white)
            .frame(width: 150, height: 50)
            .background(Color("PrimaryColor"))   .cornerRadius(15)
            .padding(.top, 10)
            .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
    }
}

struct SignUInButton : View {
    var body: some View {
        Text("Sign In")
            .foregroundColor(.white)
            .frame(width: 150, height: 50)
            .background(Color("PrimaryColor"))   .cornerRadius(15)
            .padding(.top, 10)
            .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
    }
}

struct OpenView_Previews: PreviewProvider {
    static var previews: some View {
        OpenView().environmentObject(ViewRouter())
    }
}


