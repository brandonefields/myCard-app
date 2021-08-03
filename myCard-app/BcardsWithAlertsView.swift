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
    
    
    @State private var username = ""
    @State private var selectedCard = "No Card Selected!"
    @State private var sharedCardWith = "No User Selected!"
    
    @State private var showingBcard = false
    
    @State private var casualCardTitle = "Casual Card"
    @State private var bizCajCardTitle = "Biz-Caj Card"
    @State private var professionalCardTitle = "Professional Card"
    
    @State private var correctCard = Int()
    
    @State var output: String = ""
    @State var input: String = ""
    @State var typing = false
    
    @State var inputTextString: String = ""
    
    var title: String = "Full Stack Developer"
    
    var firstName: String = "Brandon"
    var lastName: String = "Fields"
    
    var source1: String = "GitHub"
    var source2: String = "Linked_In"
    var source3: String = "Instagram"
    var source4: String = "FaceBook"
    var source5: String = "Medium"
    var source6: String = "Gmail"
    
    @State  private var colorsForBackground = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
    
    @EnvironmentObject var background: Background
    
    var body: some View {
        
        ZStack {
            
            
            
            RadialGradient(gradient: background.lightmode,
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
                            }) {
                                
                                ZStack{
                                    
                                    Image("paperTexture")
                                        .resizable()
                                        .cornerRadius(5)
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 250, height: 150)
                                        .clipped()
                                        .shadow(color: backgroundColor1, radius: 10, x: 0, y: 5)
                                        .alert(isPresented: $showingAlert1) {
                                            Alert(title: Text(casualCardTitle), message:
                                              Text(" \(source3), \(source4)"),
                                                   dismissButton:
                                                    .default(Text("Close")) {
                                                    })}
                                
                                    
                                    
                                    ZStack {
                                        
                                        Rectangle()
                                            .fill(Color.gray)
                                            .frame(width: 200, height: 50, alignment: .center)
                                            .opacity(0.1)
                                            .shadow(radius: 20)
                                            .cornerRadius(2)
                                            .offset(CGSize(width: 0.0, height: -18.0)
                                            )
                                        
                                        VStack {
                                            
                                            VStack {
                                                
                                                Text("\(firstName) \(lastName)")
                                                    .foregroundColor(.black).font(.custom("Roboto-Thin", size: 25))
                                                    .font(.custom("Roboto Mono Thin for Powerline", size: 20)).padding(-10)
                                                
                                                Divider().padding(1).frame(width: 220, height: 0, alignment: .center)
                                                
                                                Text("\(title)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 12)).padding(-5)
                                                
                                           
                                            } .padding(10)
                                        
                                            VStack {
                                                
                                                HStack {
                                                    
                                                    Image("Instagram_icon").resizable().frame(width: 10, height:10).padding(1)
                                                    
                                                    Text("\(source3)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 10))
                                                }
                                            
                                                HStack {
                                                    
                                                    Image("facebook_icon").resizable().frame(width: 10, height:10).padding(1)
                                                    
                                                    Text("\(source4)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 10))
                                                }
                                            }.frame(alignment: .center)
                                        }                                   }
                                    }
                                }
                            }
                        }
                        VStack {
                            Button(action: {
                                showingAlert2 = true
                            }) {
                                
                                ZStack{
                                    
                                    Image("paperTexture")
                                        .resizable()
                                        .cornerRadius(5)
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 250, height: 150)
                                        .clipped()
                                        .shadow(color: backgroundColor2, radius: 10, x: 0, y: 5)
                                        .alert(isPresented: $showingAlert2) {
                                            Alert(title: Text(bizCajCardTitle), message:
                                              Text(" \(source3), \(source5), \(source6)"),
                                                   dismissButton:
                                                    .default(Text("Close")) {
                                                    })}
                                
                                    
                                    
                                    ZStack {
                                        
                                        Rectangle()
                                            .fill(Color.gray)
                                            .frame(width: 200, height: 50, alignment: .center)
                                            .opacity(0.1)
                                            .shadow(radius: 20)
                                            .cornerRadius(2)
                                            .offset(CGSize(width: 0.0, height: -18.0)
                                            )
                                        
                                        VStack {
                                            
                                            VStack {
                                                
                                                Text("\(firstName) \(lastName)")
                                                    .foregroundColor(.black).font(.custom("Roboto-Thin", size: 25))
                                                    .font(.custom("Roboto Mono Thin for Powerline", size: 20)).padding(-10)
                                                
                                                Divider().padding(1).frame(width: 220, height: 0, alignment: .center)
                                                
                                                Text("\(title)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 12)).padding(-5)
                                                
                                            }.padding(10)
                                            
                                            VStack {
                                                
                                                HStack {
                                                    
                                                    Image("Instagram_icon").resizable().frame(width: 10, height:10).padding(1)
                                                    
                                                    Text("\(source3)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 10))
                                                }
                                                
                                                HStack {
                                                    
                                                    Image("medium_icon").resizable().frame(width: 10, height:10).padding(1)
                                                    
                                                    Text("\(source5)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 10))
                                                }
                                                
                                                HStack {
                                                    
                                                    Image("gmail_icon").resizable().frame(width: 10, height:10).padding(1)
                                                    
                                                    Text("\(source6)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 10))
                                                }
                                            }
                                        }
                                    }
                                }
                            }.padding(.top,20)
                        }
                        VStack {
                            
                            Button(action: {
                                showingAlert3 = true
                            }) {
                                
                                ZStack {
                                    
                                    Image("paperTexture")
                                        .resizable()
                                        .cornerRadius(5)
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 250, height: 150)
                                        .clipped()
                                        .shadow(color: backgroundColor3, radius: 10, x: 0, y: 5)
                                        .alert(isPresented: $showingAlert3) {
                                            Alert(title: Text(professionalCardTitle), message:
                                                    Text(" \(source2), \(source1), \(source6)").font(.title),
                                                   dismissButton:
                                                    .default(Text("Close")) {
                                                    })}
                                    
                                    ZStack {
                                        
                                        Rectangle()
                                            .fill(Color.gray)
                                            .frame(width: 200, height: 50, alignment: .center)
                                            .opacity(0.1)
                                            .shadow(radius: 20)
                                            .cornerRadius(2)
                                            .offset(CGSize(width: 0.0, height: -18.0)
                                            )
                                        
                                        VStack {
                                            
                                            VStack {
                                                
                                                Text("\(firstName) \(lastName)")
                                                    .foregroundColor(.black).font(.custom("Roboto-Thin", size: 25))
                                                    .font(.custom("Roboto Mono Thin for Powerline", size: 20)).padding(-10)
                                                
                                                Divider().padding(1).frame(width: 220, height: 0, alignment: .center)
                                                
                                                Text("\(title)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 12)).padding(-5)
                                                
                                            }.padding(10)
                                           
                                            HStack {
                                                
                                                Image("linkedin_icon").resizable().frame(width: 10, height:10).padding(1)
                                                
                                                Text("\(source2)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 10))
                                            }
                                            
                                            HStack {
                                                
                                                Image("github_icon").resizable().frame(width: 10, height:10).padding(1)
                                                
                                                Text("\(source1)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 10))
                                            }
                                            
                                            HStack {
                                                
                                                Image("gmail_icon").resizable().frame(width: 10, height:10).padding(1)
                                                
                                                Text("\(source6)").foregroundColor(.black).font(.custom("Roboto Mono Thin for Powerline", size: 10))
                                            }
                                        }
                                    }
                                }.padding(.top,20) .padding(.bottom, 15)
                            }
                    }
                    VStack {
                        
                        TextField("\(inputTextString)", text: $username,
                                  onEditingChanged: { self.typing = $0}, onCommit: {
                                    self.output = self.input
                                  })
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 320, height: 40, alignment: .center)
                                .padding(10)
                        
                        HStack {
                            VStack {
                                
                                Text("Select Card")
                                    .foregroundColor(.white)
                                    .frame(width: 130, height: 50)
                                    .background(Color("PrimaryColor"))   .cornerRadius(15)
                                    .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
                                    .padding(.top,10)
                                    .font(.headline)
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
                            }
                            VStack {
              
                                 Button("Share Card") {
                                     showingAlert = true
                                     
                                 }
                                 .foregroundColor(.white)
                                 .frame(width: 130, height: 50)
                                 .background(Color("PrimaryColor"))
                                 .cornerRadius(15)
                                 .font(.headline)
                                 .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
                                 .padding(.top,10)
                                 .alert(isPresented: $showingAlert){
                                    return Alert(title: Text("\(selectedCard)!"),
                                           message: Text("\(sharedCardWith)"),
                                           dismissButton: .default(Text("Close")))
                                   
                                 }
                                
                            }
                        }
                    }
                }
            }
        }
    }
    
    func handleClearingInputField() {
        if ( inputTextString != ""){
            inputTextString = ""
        }
    }
    
    func casualCardHightlight(){
        if backgroundColor1 == Color("Shadow") && selectedCard == "No Card Selected!" && sharedCardWith == "No User Selected!" {
            backgroundColor1 = Color.red
            selectedCard = "You Shared a Casual Card"
            sharedCardWith = "\(username)"
        } else if backgroundColor1 == Color.red && selectedCard == "You Shared a Casual Card" && sharedCardWith == "\(username)" {
            backgroundColor1 = Color("Shadow")
            selectedCard = "No Card Selected!"
            sharedCardWith = "No User Selected!"
        }
    }
        
    
    func bizCajHightlight(){
        if backgroundColor2 == Color("Shadow") && selectedCard == "No Card Selected!" && sharedCardWith == "No User Selected!" {
            backgroundColor2 = Color.red
            selectedCard = "You Shared a Biz-Caj Card"
            sharedCardWith = "\(username)"
        } else if backgroundColor2 == Color.red && selectedCard == "You Shared a Biz-Caj Card" && sharedCardWith == "\(username)" {
            backgroundColor2 = Color("Shadow")
            selectedCard = "No Card Selected!"
            sharedCardWith = "No User Selected!"
        }
    }
    
    func professionalCardHightlight(){
        if backgroundColor3 == Color("Shadow") && selectedCard == "No Card Selected!" && sharedCardWith == "No User Selected!" {
            backgroundColor3 = Color.red
            selectedCard = "You Shared a Professional Card"
            sharedCardWith = "\(username)"
        } else if backgroundColor3 == Color.red && selectedCard == "You Shared a Professional Card" && sharedCardWith == "\(username)" {
            backgroundColor3 = Color("Shadow")
            selectedCard = "No Card Selected!"
            sharedCardWith = "No User Selected!"
        }
    }
}

struct BcardsWithAlertsView_Previews: PreviewProvider {
    static var previews: some View {
        BcardsWithAlertsView().environmentObject(Background())
    }
}

