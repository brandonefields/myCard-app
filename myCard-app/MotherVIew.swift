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
                .transition(.scale)
        case .page2:
            HomeView()
                .transition(.scale)
        case .page3:
            PreLaunch()
                .transition(.scale)
        case .page4:
            HomeView()
                .transition(.scale)
        case .page5:
            HomeView()
                .transition(.scale)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}

