//
//  OpenView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/25/21.
//


import SwiftUI

struct User: Identifiable {
    let id: String
}

struct OpenView: View {
    
    @State private var password: String = ""
    @State private var username: String = ""
    @State private var selectedUser: User?
    @State private var showingAlert: Bool = false
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack {

            TextField("Username", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 27.0)
            
            SecureField("Password", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 27.0)
            
            HStack {
                
                Button(action: {
                    withAnimation {
                        viewRouter.currentPage = .page5
                    }
                }) {
                    SignUpButton().padding(10)
                }
               
                Button(action: { if( username == "" || username == password ||  username != password){
                    withAnimation {
                        handleLogIn()
                    };
                    showingAlert = true
                }
                }) {
                    SignInButton().alert(isPresented: $showingAlert) {
                        Alert(title: Text("Sign In Error"), message: Text("Username or Password incorrect"),
                              dismissButton: .default(Text("OK")))
                     }.padding(10)
                }
            }
        }
        .background(Image("b_card")
                        .resizable()
                        .frame(width: 820, height:1000, alignment: .center)
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.6))
    }
    
    func handleLogIn (){
        if( username == "" ) {
        print("incorrect  username or password")
    } else if ( username == password) {
        return viewRouter.currentPage = .page4
    }
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

struct SignInButton : View {
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




