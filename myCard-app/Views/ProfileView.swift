//
//  ProfileView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var contactType = ["@GitHub","@Linked_In","@Instagram","@FaceBook","@Medium","@Gmail"]
    
    @State private var isExpanded = false
    @State private var selectedContact = "Sources"
    @State private var fontColor: String = "dark"
    @State private var boxColor: String = "light"
    @State private var newSource = ""
    
    var source1: String = "GitHub"
    var source2: String = "Linked_In"
    var source3: String = "Instagram"
    var source4: String = "FaceBook"
    var source5: String = "Medium"
    var source6: String = "Gmail"
    
    @EnvironmentObject var background: Background
    
    var body: some View {
        
        ZStack {
            
            RadialGradient(gradient: background.lightmode,
                           center: UnitPoint.center,
                           startRadius: 0,
                           endRadius: 500).ignoresSafeArea(.all)

            VStack {
            
                Image("i_creek_selfie")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape( Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color("Shadow"), lineWidth: 5))
                    .padding(10)
                    .padding(.bottom,1)
                Spacer()
            }
            
            Spacer()
            VStack {
                Spacer()
                Spacer()
                Spacer()

                Text("Brandon E Fields").font(.custom("Roboto-Thin", size: 40))
                    .padding(.top, 100).foregroundColor(Color("\(fontColor)"))
                    .padding(1)
                Divider().frame(width: 200, height: 4, alignment: .center).padding(-9)
                
                TextField("Add a Source", text: $newSource, onCommit: addNewContact)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(1)
                    .keyboardType(.default)
                    .frame(width: 300, height: 100, alignment: .center  )
                
                    
                    VStack(alignment: .leading, spacing: 15) {
                       
                        DisclosureGroup("\(selectedContact)", isExpanded: $isExpanded) {
                            
                            ScrollView {
                                
                                VStack {
                                    
                                    ForEach(contactType, id: \.self) { type in
                                        Text("\(type)")
                                            .frame(maxWidth: .infinity)
                                            .font(.title3)
                                            .padding(.all)
                                            .onTapGesture {
                                                self.selectedContact = type
                                                withAnimation {
                                                    self.isExpanded.toggle()
                                                }
                                            }
                                    }
                                }
                            }.frame(height: 200)
                            
                        }.frame(width: 290).accentColor(Color("Shadow"))
                            .font(.title3)
                            .foregroundColor(Color("light"))
                            .padding()
                            .background(Color.gray)
                            .cornerRadius(10)
                            .shadow(color: Color("Shadow"), radius: 3, x: 0, y: 5).opacity(0.9)
                    
                    }.padding(.all)
                    
                    .frame(width: 300, height: 250, alignment: .center).accentColor(.blue)
                
                }
        }.onAppear{ handleFontColor()}
    }
    
    
    func handleFontColor(){
        if ( fontColor == "dark"  && background.lightmode == Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])) {
            fontColor = "dark"
        } else if (background.lightmode == Gradient(colors: [.black, Color("DarkBackground"), Color(".black")]) ) {
            fontColor = "light"
        }
    }
    
 func addNewContact() {
    let EnteredType = newSource.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

    guard EnteredType.count > 0 else {
        return
    }

    contactType.insert(EnteredType, at: 0)
    newSource = ""
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().environmentObject(Background())
    }
}

