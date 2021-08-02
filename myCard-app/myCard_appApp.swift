//
//  myCard_appApp.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/25/21.
//

import SwiftUI

class Background: ObservableObject {
//    var didChange = PassthroughSubject<Void, Never>()
    
   @Published var lightmode = Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])
}


@main
struct NavigatingInSwiftUIApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    @StateObject var background = Background()
    
   
    
    
    var body: some Scene {
        WindowGroup {
            MotherView()
                .environmentObject(viewRouter)
                .environmentObject(background)
                
        }
    }
}
