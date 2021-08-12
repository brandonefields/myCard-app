//
//  MotherVIew.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/25/21.
//


import SwiftUI

struct MotherView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            OpenView()
        case .page2:
            HomeView()
        case .page3:
            PreLaunch()
        case .page4:
            NewHomeView()
        case .page5:
            SignUpView()
        case .page6:
            ContactsView()
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}

