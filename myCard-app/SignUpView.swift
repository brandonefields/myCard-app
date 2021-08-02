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
    @State private var password: String = ""
    @State private var profileImage: String = ""
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var birthDate: String = ""
    @State private var urlForCard: String = ""
    
    
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
                
                VStack{
                    
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 180, height: 180)
                        .clipShape( Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(Color("Shadow"), lineWidth: 10))
                        .padding(20)
                        .opacity(0.4)
                    
                  
                    
                    TextField("Username", text: $username)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 27.0)
                    
                    TextField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 27.0)
                    
                    TextField("Profile Image", text: $profileImage)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 27.0)
                    
                    
                    TextField("First Name", text: $firstName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 27.0)
                    
                    TextField("Last Name", text: $lastName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 27.0)
                    
                    
                    TextField("Birth Date", text: $birthDate)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 27.0)
                    
                    TextField("First URL Link for Card", text: $urlForCard)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 27.0)
                    
                    Text("Add Another URL")
                        .foregroundColor(Color("Shadow"))
                    
                    HStack {
                        
                        Button(action: {
                            withAnimation {
                                handleLogIn()
                            }
                        }) {
                            SignInButton().padding(10).font(.headline)
                        }
                        Button(action: {
                            withAnimation {
                                viewRouter.currentPage = .page1
                            }
                        }) {
                            GoHomeButton().padding(10).font(.headline)
                        }
                        
                    }
                    
                }
                Spacer()
                
            }
        }
    }
    
    func  handleLogIn (){
      if( username == "" ) {
          return viewRouter.currentPage = .page5
      } else if ( username != "") {
          return viewRouter.currentPage = .page4
      }
    }
}

struct GoHomeButton : View {
    var body: some View {
        Text("Back")
            .fontWeight(.medium)
            .foregroundColor(.white)
            .frame(width: 150, height: 50)
            .background(Color("PrimaryColor"))
            .cornerRadius(15)
            .padding(.top, 10)
            .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
