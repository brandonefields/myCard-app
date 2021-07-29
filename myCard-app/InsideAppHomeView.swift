//
//  InsideAppHomeView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//


import Combine
import SwiftUI

class Background: ObservableObject {
//    var didChange = PassthroughSubject<Void, Never>()
    
   @Published var lightmode = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
}

struct InsideAppHomeView: View {
    @ObservedObject var background = Background()
    
    @State private var showingActionSheet1 = false
    @State private var backgroundColor = Color.white
//    @State private var colorsForBackground8 = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
    @State private var profileImage = "myCardLogo"
    @State private var colorMode = "Dark Mode"
    
    var body: some View {
        ZStack {
            
            RadialGradient(gradient: background.lightmode,
                           center: UnitPoint.center,
                           startRadius: 0,
                           endRadius: 500)
                .ignoresSafeArea(.all)

                                                    
            
           
            VStack {
        
                Image("\(profileImage)")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape( Circle())
                    .shadow(radius: 10)
                    .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
                    .overlay(Circle().stroke(Color("Shadow"), lineWidth: 5))
                    .padding(30)
                Spacer()
            }
            VStack {
                
                Spacer()
                Spacer()
                
                Text("Preferences")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color("PrimaryColor"))   .cornerRadius(15)
                    .padding(.top,10)
                    .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
                        .onTapGesture { self.showingActionSheet1 = true }
                            .actionSheet(isPresented: $showingActionSheet1){
                                ActionSheet(title: Text("Preferences"), message:
                                            Text("Select a Option"), buttons: [
                                                .default(Text("Chage Profile Image")) { handleActionSheetSelectionProfileImage() },
                                                .default(Text ("\(colorMode)")) { handleActionSheetSelectionBackground()},
                                                .default(Text("More")) { handleActionSheetSelectionContacts() },
                                                .cancel()
                                            ])
                            }
                Spacer()
            }
        }
    }
    
    func handleActionSheetSelectionProfileImage(){
           
           if profileImage == "myCardLogo" {
               profileImage = "laugh"
           } else if profileImage == "laugh" {
               profileImage = "myCardLogo"
           }
       }
    
    func handleActionSheetSelectionBackground(){
        
        if background.lightmode == Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
        && colorMode == "Dark Mode" {
            background.lightmode = Gradient(colors: [.black, Color("DarkBackground"), Color(".black")])
            colorMode = "Light Mode"
        } else if background.lightmode  == Gradient(colors: [.black, Color("DarkBackground"), Color(".black")])
        && colorMode == "Light Mode" {
            background.lightmode = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
            colorMode = "Dark Mode"
        }
    }
    
    func handleActionSheetSelectionContacts(){
           
           if background.lightmode == Gradient(colors: [.white, Color("Background"), Color("DarkBackground")]) {
            background.lightmode = Gradient(colors: [.black, Color("DarkBackground"), Color(".black")])
           } else if background.lightmode  == Gradient(colors: [.black, Color("DarkBackground"), Color(".black")]) {
            background.lightmode = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
           }
       }
    
}

struct InsideAppHomeView_Previews: PreviewProvider {
    static var previews: some View {
        InsideAppHomeView()
    }
}

