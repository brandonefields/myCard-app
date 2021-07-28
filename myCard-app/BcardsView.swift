//
//  BcardsView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/28/21.
//

import SwiftUI

struct BcardsView: View {
    
    var countries = ["Casual","Biz-Caj","Professional"]
    
    var body: some View {
        VStack {
             
            Text("Hellooo from the BcardsView")
 
        
            Button(action: {
                //flag was tapped
            }) { Image("casual_b_card")
            }
        }
    }
}

    
struct BcardsView_Previews: PreviewProvider {
    static var previews: some View {
        BcardsView()
    }
}

