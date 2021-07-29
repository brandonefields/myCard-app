//
//  ContactsView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/28/21.
//


import SwiftUI

struct ContactsView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        
        VStack {
            Text("this will be where the contacts go")
        
            Button(action: {
                withAnimation {
                    viewRouter.currentPage = .page5
                }
            }) {
                GoHomeButton2().padding(10)
            }
        }
            
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
