//
//  BcardsView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/28/21.
//

import SwiftUI

struct BcardsView: View {
    
    var countries = ["Casual","Biz-Caj","Professional"]
    
    @State private var showingBcard = false
    
    @State private var cardTitle = "Professional Card"
    
    @State private var correctCard = Int()
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors:
                            [Color("Background"), Color("DarkBackground")]),
                                startPoint: .top,
                                    endPoint: .bottom)
                                        .ignoresSafeArea(.all)
            
            VStack {
                 
                Button(action: {
                    //flag was tapped
                }) { Image("casual_b_card")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(6)
                }
                Button(action: {
                    //flag was tapped
                }) { Image("biz_caj_card")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(6)
                }
                Button(action: {
                    self.handleClickedCard()
                }) { Image("pro_card")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(6)
                    
                }
                Spacer()
            }
        }
        .alert(isPresented: $showingBcard) {
            Alert(title: Text(cardTitle), message:
                  Text("Edit Professional Card?"),
                       dismissButton:
                        .default(Text("Are you sure you want to edit this card?")) {
                            self.exitCardDetails()
                        })
        
        }
    }
    
    func handleClickedCard() {
        showingBcard = true
        
    }
    func exitCardDetails(){
        correctCard = Int(1)
    }
}

    
struct BcardsView_Previews: PreviewProvider {
    static var previews: some View {
        BcardsView()
    }
}

