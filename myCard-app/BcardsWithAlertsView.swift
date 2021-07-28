//
//  BcardsWithAlerts.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/28/21.
//

import SwiftUI


struct BcardsWithAlertsView: View {

    @State private var showingActionSheet = false
    @State private var backgroundColor = Color("Shadow")
    @State private var backgroundColor1 = Color("Shadow")
    @State private var backgroundColor2 = Color("Shadow")
    @State private var backgroundColor3 = Color("Shadow")
    @State private var showingBcard = false
    @State private var casualCardTitle = "Casual Card"
    @State private var bizCajCardTitle = "Biz-Caj Card"
    @State private var professionalCardTitle = "Professional Card"
    @State private var correctCard = Int()
    private let colorsForBackground = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
    
    var body: some View {
        
        ZStack {
            
            
            
            RadialGradient(gradient: colorsForBackground,
                           center: UnitPoint.center,
                           startRadius: 0,
                           endRadius: 500)
                .ignoresSafeArea(.all)
                .opacity(0.8)
                                                    
            
            VStack {
                ZStack {
                    Text("Edit Cards")
                        .foregroundColor(.white)
                        .frame(width: 100, height: 30)
                        .background(Color("PrimaryColor"))
                        .cornerRadius(15)
                        .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
                        .padding(10)
                        .offset(x:120)
                }
                
                
                
                VStack {
                    VStack {
                        VStack {
                            Button(action: {
                                self.handleClickedCard()
                            }) { Image("casual_b_card")
                                    .resizable()
                                    .cornerRadius(5)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250)
                                    .padding(10)
                                    .shadow(color: backgroundColor1, radius: 10, x: 0, y: 5)
                                    
                                    
                            }.alert(isPresented: $showingBcard) {
                                Alert(title: Text(casualCardTitle), message:
                                      Text("To edit this card click the 'Edit Card' button"),
                                           dismissButton:
                                            .default(Text("Close")) {
                                                self.exitCardDetails()
                                            })

                            }
                        }
                        VStack {
                            Button(action: {
                                self.handleClickedCard()
                            }) { Image("biz_caj_card")
                                    .resizable()
                                    .cornerRadius(5)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250)
                                    .padding(10)
                                    .shadow(color: backgroundColor2, radius: 10, x: 0, y: 5)
                                    
                            }.alert(isPresented: $showingBcard) {
                                Alert(title: Text(bizCajCardTitle), message:
                                      Text("To edit this card click the 'Edit Card' button"),
                                           dismissButton:
                                            .default(Text("Close")) {
                                                self.exitCardDetails()
                                            })
                            
                                }
                        }
                        VStack {
                            Button(action: {
                                self.handleClickedCard()
                            }) { Image("pro_card")
                                    .resizable()
                                    .cornerRadius(5)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250)
                                    .padding(10)
                                    .shadow(color: backgroundColor3, radius: 10, x: 0, y: 5)
                                
                                    
                            }.alert(isPresented: $showingBcard) {
                                Alert(title: Text(professionalCardTitle), message:
                                      Text("To edit this card click the 'Edit Card' button"),
                                           dismissButton:
                                            .default(Text("Close")) {
                                                self.exitCardDetails()
                                            })
                                }
                        }
                    }
                    VStack {
                
                        Text("Share a Card")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color("PrimaryColor"))   .cornerRadius(15)
                            .padding(.top, 20)
                            .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
                            .onTapGesture {
                                self.showingActionSheet = true
                                }.actionSheet(isPresented: $showingActionSheet){
                                    ActionSheet(title: Text("Send Card"), message:
                                                Text("Select a Card"), buttons: [
                                                    .default(Text("Casual")) { casualCardHightlight() },
                                                    .default(Text ("Biz-Caj")) { bizCajHightlight() },
                                                    .default(Text("Professional")) { professionalCardHightlight() },
                                                    .cancel()
                                                ])}
                        
                    }
                
                }
                
            }
        }
    }
    
    
    
    
    func handleClickedCard() {
        showingBcard = true
        
    }
    
    func exitCardDetails(){
        if backgroundColor != Color("Shadow") {
            backgroundColor = Color("Shadow")
        }
    }
    
    func casualCardHightlight(){
        if backgroundColor1 == Color("Shadow"){
            backgroundColor1 = Color.red
        } else if backgroundColor1 == Color.red {
            backgroundColor1 = Color("Shadow")
        }
    }
    
    func bizCajHightlight(){
        if backgroundColor2 == Color("Shadow"){
            backgroundColor2 = Color.red
        } else if backgroundColor2 == Color.red {
            backgroundColor2 = Color("Shadow")
        }
    }
    
    func professionalCardHightlight(){
        if backgroundColor3 == Color("Shadow"){
            backgroundColor3 = Color.red
        } else if backgroundColor3 == Color.red {
            backgroundColor3 = Color("Shadow")
        }
    }
 
 
    
}



struct BcardsWithAlertsView_Previews: PreviewProvider {
    static var previews: some View {
        BcardsWithAlertsView()
    }
}
