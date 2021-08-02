//
//  Bcard.swift
//  myCard-app
//
//  Created by Brandon Fields on 8/2/21.
//

import SwiftUI

struct BcardView: View {
    
    var firstName: String = "Brandon"
    var lastName: String = "Fields"
    var source1: String = "@GitHub"
    var source2: String = "@LinkedIn"
    
    var body: some View {
        ZStack {
            
            VStack {
                
                Text("\(firstName) \(lastName)")
                    .padding(1)
                    .font(.title)
                    .cornerRadius(1.5)
                    
                Text(" \(source1)")
                Text(" \(source2)")
                
            }
        }.background(Image("paperTexture")).frame(width: 250, height: 150, alignment: .center).clipped()
    }
}

struct BcardView_Previews: PreviewProvider {
    static var previews: some View {
        BcardView()
    }
}
