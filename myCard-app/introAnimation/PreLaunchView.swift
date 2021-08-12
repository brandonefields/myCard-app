//
//  PreLaunchView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/25/21.
//

import SwiftUI

struct PreLaunch: View {
    
    @State private var showMainView = false
    @State var angle: Double = 360
    @State var opacity: Double = 1
    @State var scale: CGFloat = 1
    
    var body: some View {
        
        Group {
            if showMainView {
               OpenView()
            } else {
                ZStack {
                    
                    Image("myCardLogo")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .rotation3DEffect(.degrees(angle), axis: (x: 0, y: 1, z: 0))
                        .scaleEffect(scale)
                        .opacity(opacity)
                }
            }
        }
        .onAppear {
            withAnimation(.linear(duration: 1.5)) {
                self.angle = 0
                self.scale = 50
                self.opacity = 0
            }
            
            withAnimation(Animation.linear.delay(1.5)){
                self.showMainView = true
            }
        }
    }
}

struct PreLaunch_Previews: PreviewProvider {
    static var previews: some View {
        PreLaunch()
    }
}

