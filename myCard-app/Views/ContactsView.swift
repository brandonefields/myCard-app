//
//  ContactsView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/28/21.
//


import SwiftUI

struct ContactsView: View {
    
    @State private var newContact = ""
    @State private var fontColor: String = "dark"
    @State private var listColor: String = "dark"
    @State private var contactsColor: String = "dark"
    @State private var isExpanded = false
    @State private var selectedContact = "Contact List"
    
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var background: Background
    
    @State private var contacts: [String] = ["@greg","@tony","@mandy","@danny","@michael","@jay","@keith","@chris"]
    
    var body: some View {
    
        NavigationView {
            
            ZStack {
                
                RadialGradient(gradient: background.lightmode,
                    center: .center,
                    startRadius: 0,
                    endRadius: 500).ignoresSafeArea(.all)
                
                VStack {
                    
                    VStack {
                        
                        Text("Contacts").font(.custom("Roboto-Thin", size: 45))
                            .padding(.bottom,20).foregroundColor(Color("\(fontColor)"))
                        
                        TextField("Enter a Contact", text:$newContact, onCommit: addNewContact)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                            .keyboardType(.default)
                    }
                    VStack {
                        
                        VStack {
                            
                            VStack(alignment: .leading, spacing: 15) {
                               
                                DisclosureGroup("\(selectedContact)", isExpanded:
                                                    $isExpanded) {
                                    ScrollView {
                                        VStack {
                                            
                                            ForEach(contacts, id: \.self) { contact in
                                                Text("\(contact)")
                                                    .frame(maxWidth: .infinity)
                                                    .font(.title3)
                                                    .padding(.all)
                                                    .onTapGesture {
                                                        self.selectedContact = contact
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
                                    .padding(9)
                                    .background(Color.gray)
                                    .cornerRadius(8)
                                    .shadow(color: Color("Shadow"), radius: 3, x: 0, y: 5).opacity(0.9)
                            
                            }.padding(.all)
                        }
                        Spacer()
                    }.foregroundColor(Color("\(listColor)"))
                }
            }.onAppear{ handleFontColor() }
        }
    }

    func handleFontColor(){
        if (background.lightmode == Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])){
            fontColor = "dark"
        } else if (background.lightmode == Gradient(colors: [.black, Color("DarkBackground"), Color(".black")]) ) {
            fontColor = "light"
        }
    }
    
    func addNewContact() {
        let Enteredcontact = newContact.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)

        guard Enteredcontact.count > 0 else {
            return
        }

        contacts.insert(Enteredcontact, at: 0)
        newContact = ""
    }

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView().environmentObject(Background())
    }
}
}
