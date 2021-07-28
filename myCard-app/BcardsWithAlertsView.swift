//
//  BcardsWithAlerts.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/28/21.
//

import SwiftUI


struct BcardsWithAlertsView: View {
    @State private var showingAlert = false
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    @State private var showingAlert3 = false
    
    @State private var showingActionSheet = false
    
    @State private var backgroundColor = Color("Shadow")
    @State private var backgroundColor1 = Color("Shadow")
    @State private var backgroundColor2 = Color("Shadow")
    @State private var backgroundColor3 = Color("Shadow")
    
    @State private var selectedCard = "No Card Selected!"
    @State private var typeOfSelectedCard = ""
    
    @State private var showingBcard = false
    
    @State private var casualCardTitle = "Casual Card"
    @State private var bizCajCardTitle = "Biz-Caj Card"
    @State private var professionalCardTitle = "Professional Card"
    
    @State private var correctCard = Int()
    
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
                
                ZStack {
                   
                }
                VStack {
                    
                    VStack {
                        
                        VStack {
                            
                            Button(action: {
                                showingAlert1 = true
                            }) { Image("casual_b_card")
                                    .resizable()
                                    .cornerRadius(5)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250)
                                    .padding(2)
                                    .padding(.top, 10)
                                    .shadow(color: backgroundColor1, radius: 10, x: 0, y: 5)
                                    .alert(isPresented: $showingAlert1) {
                                        Alert(title: Text(casualCardTitle), message:
                                          Text("This card is for casual relationships."),
                                               dismissButton:
                                                .default(Text("Close")) {
                                                })
                                    
                            }

                            }
                        }
                        VStack {
                            Button(action: {
                                showingAlert2 = true
                            }) { Image("biz_caj_card")
                                    .resizable()
                                    .cornerRadius(5)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250)
                                    .padding(2)
                                    .shadow(color: backgroundColor2, radius: 10, x: 0, y: 5)
                                    .alert(isPresented: $showingAlert2) {
                                        Alert(title: Text(bizCajCardTitle), message:
                                          Text("This card is for semi professional relationships."),
                                               dismissButton:
                                                .default(Text("Close")) {
                                                })
                            }
                            
                                }
                        }
                        VStack {
                            Button(action: {
                                showingAlert3 = true
                            }) { Image("pro_card")
                                    .resizable()
                                    .cornerRadius(5)
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250)
                                    .padding(2)
                                    .shadow(color: backgroundColor3, radius: 10, x: 0, y: 5)
                                    .alert(isPresented: $showingAlert3) {
                                        Alert(title: Text(professionalCardTitle), message:
                                          Text("This card is for professional relationships."),
                                               dismissButton:
                                                .default(Text("Close")) {
                                                })
                                    }
                                    
                            }
                        }
                    }
                    VStack {
                        
                        HStack {
                            
                            Text("Select Card")
                                .foregroundColor(.white)
                                .frame(width: 130, height: 50)
                                .background(Color("PrimaryColor"))   .cornerRadius(15)
                                .padding(.top, 20)
                                .padding(4)
                                .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
                                .onTapGesture {
                                    self.showingActionSheet = true
                                    }.actionSheet(isPresented: $showingActionSheet){
                                        ActionSheet(title: Text("Select Card"), message:
                                                    Text("Select a Card"), buttons: [
                                                        .default(Text("Casual")) { casualCardHightlight() },
                                                        .default(Text ("Biz-Caj")) { bizCajHightlight() },
                                                        .default(Text("Professional")) { professionalCardHightlight() },
                                                        .cancel()
                                                    ])}
                            
                            Button("Share Card") {
                                showingAlert = true
                            }
                            .foregroundColor(.white)
                            .frame(width: 130, height: 50)
                            .background(Color("PrimaryColor"))
                            .cornerRadius(15)
                            .padding(.top, 20)
                            .padding(4)
                            .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
                            .alert(isPresented: $showingAlert){
                                Alert(title: Text("\(selectedCard)"),
                                      message: Text("\(typeOfSelectedCard)"),
                                      dismissButton: .default(Text("Close")))
                            }
                        }
                    }
                    Spacer()
                
                }
                
            }
        }
    }
    
 

    func casualCardHightlight(){
        if backgroundColor1 == Color("Shadow") && selectedCard == "No Card Selected!" && typeOfSelectedCard == ""{
            backgroundColor1 = Color.red
            selectedCard = "You Shared Casual Card"
            typeOfSelectedCard = "Casual"
        } else if backgroundColor1 == Color.red && selectedCard == "You Shared Casual Card" && typeOfSelectedCard == "Casual"{
            backgroundColor1 = Color("Shadow")
            selectedCard = "No Card Selected!"
            typeOfSelectedCard = ""
            
        }
    }
        
    
    func bizCajHightlight(){
        if backgroundColor2 == Color("Shadow") && selectedCard == "No Card Selected!" && typeOfSelectedCard == "" {
            backgroundColor2 = Color.red
            selectedCard = "You Shared Biz-Caj Card"
            typeOfSelectedCard = "Biz-Caj"
        } else if backgroundColor2 == Color.red && selectedCard == "You Shared Biz-Caj Card" && typeOfSelectedCard == "Biz-Caj"{
            backgroundColor2 = Color("Shadow")
            selectedCard = "No Card Selected!"
            typeOfSelectedCard = ""
        }
    }
    
    func professionalCardHightlight(){
        if backgroundColor3 == Color("Shadow") && selectedCard == "No Card Selected!" && typeOfSelectedCard == "" {
            backgroundColor3 = Color.red
            selectedCard = "You Shared Professional Card"
            typeOfSelectedCard = "Professional"
        } else if backgroundColor3 == Color.red && selectedCard == "You Shared Professional Card" && typeOfSelectedCard == "Professional" {
            backgroundColor3 = Color("Shadow")
            selectedCard = "No Card Selected!"
            typeOfSelectedCard = ""
        }
    }
}

struct BcardsWithAlertsView_Previews: PreviewProvider {
    static var previews: some View {
        BcardsWithAlertsView()
    }
}
