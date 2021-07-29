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
    @State private var contactsList = [String]()
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    @State private var allContacts = "@Greg"
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter a Contact", text:$newContact, onCommit: addNewContact)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .keyboardType(.default)
                
                
                List(contactsList, id: \.self){
                    Image(systemName: "person.circle")
                    Text($0)
                }
            }
            
        }
    }
    func addNewContact() {
        let contact = newContact.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard contact.count > 0 else {
            return
        }
        
        // extra validation goes here
        
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
            .padding(.top, 10)
            .shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5)
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
