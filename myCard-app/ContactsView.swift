//
//  ContactsView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/28/21.
//


import SwiftUI


struct ContactsView: View {
    
    @State private var newContact = ""
    @State private var rootword = ""
    @State private var contactsList = ["@Greg","@Tony","@Mandy","@Danny","@Michael","@Jay","@Keith","@Chris"]
    @State private var fontColor: String = "dark"
    @State private var listColor: String = "dark"
    @State private var contactsColor: String = "dark"
    
    
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var background: Background


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
                        
                        List(contactsList, id: \.self){
                            Image(systemName: "person.circle")
                            Text($0)
                            Spacer()
                            Button(action: {
                                handleContactClick()
                            }, label: {
                                Image(systemName: "checkmark.circle.fill")
                            })
                            .cornerRadius(10.0).background(Color("\(contactsColor)")).cornerRadius(10.0).opacity(0.4)
                        }
                    }.onTapGesture {
                        handleContactClick()
                    }.foregroundColor(Color("\(listColor)"))
                }
            }.onAppear{handleFontColor() }
        }
    }
    
    func handleContactClick () {
        if( contactsColor == "dark" ) {
            contactsColor = "green"
        } else if( contactsColor == "green"){
            contactsColor = "dark"
        }
    }
    
    func handleFontColor(){
        if (background.lightmode == Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])) {
            fontColor = "dark"
        } else if (background.lightmode == Gradient(colors: [.black, Color("DarkBackground"), Color(".black")]) ) {
            fontColor = "light"
        }
    }
    
    func addNewContact() {
        let contact = newContact.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard contact.count > 0 else {
            return
        }
        
        contactsList.insert(contact, at: 0)
        newContact = ""
    }
}

struct GoHomeButton2 : View {
    var body: some View {
        Text("Back")
            .foregroundColor(.white)
            .frame(width: 150, height: 50)
            .background(Color("PrimaryColor"))
            .cornerRadius(15)
            .font(.headline)
            .padding(.top, 10)
            .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView().environmentObject(Background())
    }
}
