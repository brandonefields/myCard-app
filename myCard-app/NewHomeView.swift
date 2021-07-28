//
//  NewHomeView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//

import SwiftUI

struct NewHomeView: View {
    var body: some View {
        TabView {
            
            InsideAppHomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                }.tag(1)
            
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName:"person.crop.circle")
                        Text("Profile")
                    }
                }.tag(2)
            BcardsWithAlertsView()
                .tabItem {
                    VStack {
                        Image(systemName: "rectangle.dashed")
                        Text("Cards")
                    }
                }.tag(3)
            OpenView()
                .tabItem {
                    VStack {
                        Image(systemName: "figure.walk")
                        Text("Log Out")
                    }
                }.tag(4)
        }
    }
}

struct NewHomeView_Previews: PreviewProvider {
    static var previews: some View {
        NewHomeView()
    }
}
