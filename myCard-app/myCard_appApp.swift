//
//  myCard_appApp.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/25/21.
//

import SwiftUI

@main
struct NavigatingInSwiftUIApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            MotherView().environmentObject(viewRouter)
        }
    }
}
