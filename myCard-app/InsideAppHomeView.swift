//
//  InsideAppHomeView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//



import SwiftUI

struct InsideAppHomeView: View {
    
    @State private var showingActionSheet1 = false
    @State private var backgroundColor = Color.white
    @State private var colorsForBackground8 = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
    
    var body: some View {
        ZStack {
            
            RadialGradient(gradient: colorsForBackground8,
                           center: UnitPoint.center,
                           startRadius: 0,
                           endRadius: 500)
                .ignoresSafeArea(.all)

                                                    
            
           
            VStack {
        
                Image("miiCard_logo 2")
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
                                                .default(Text("Chage Profile Image")) { handleActionSheetSelection() },
                                                .default(Text ("Dark Mode")) { handleActionSheetSelection()},
                                                .default(Text("Add Contacts")) { handleActionSheetSelection() },
                                                .cancel()
                                            ])
                            }
                Spacer()
            }
        }
    }
    
 func handleActionSheetSelection(){
        
        if colorsForBackground8 == Gradient(colors: [.white, Color("Background"), Color("DarkBackground")]) {
            colorsForBackground8 = Gradient(colors: [.black, Color("DarkBackground"), Color(".black")])
        } else if colorsForBackground8  == Gradient(colors: [.black, Color("DarkBackground"), Color(".black")]) {
            colorsForBackground8 = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
        }
    }
    
}

struct InsideAppHomeView_Previews: PreviewProvider {
    static var previews: some View {
        InsideAppHomeView()
    }
}

