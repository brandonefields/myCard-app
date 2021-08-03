//
//  ProfileView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/27/21.
//

import SwiftUI

struct ProfileView: View {

    var source1: String = "GitHub"
    var source2: String = "Linked_In"
    var source3: String = "Instagram"
    var source4: String = "FaceBook"
    var source5: String = "Medium"
    var source6: String = "Gmail"
    
    @EnvironmentObject var background: Background
    
    @State private var fontColor: String = "dark"
    
    @State private var boxColor: String = "light"
      
    var body: some View {
        
        
        ZStack {
            
            RadialGradient(gradient: background.lightmode,
                           center: UnitPoint.center,
                           startRadius: 0,
                           endRadius: 500).ignoresSafeArea(.all)
           

            VStack {
            
                Image("i_creek_selfie")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape( Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color("Shadow"), lineWidth: 5))
                    .padding(10)
                    .padding(.bottom, 30)
                Spacer()
            }
            
          
            VStack {
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                VStack {
                    
                    VStack {
                     
                        Text(" Brandon E Fields ")
                            .font(.system(size: 30))
                            .underline()
                            .foregroundColor(Color("\(fontColor)"))
                            .padding(.top,20)
                            .padding(10)
                        Text("Sept-19-1986")
                            .foregroundColor(Color("\(fontColor)"))
                            .padding(1)
                            .padding(.bottom, 10)
                        
                    }.padding(.bottom, 20)
                    
                    ZStack {
                        
                        VStack {
                            
                            HStack {
                                
                                Image("gmail_icon").resizable().frame(width: 15, height: 15).padding(1).background(Color(.white))
                                
                                Text("\(source6)")
                                    .foregroundColor(Color("\(fontColor)"))
                                    .padding(1)
                                
                            }
                            HStack {
                                
                                Image("medium_icon").resizable().frame(width: 15, height: 15).padding(1).background(Color(.white))
                                Text("\(source5)")
                                    .foregroundColor(Color("\(fontColor)"))
                                    .padding(1)
                                
                            }
                            HStack {
                                
                                Image("github_icon").resizable().frame(width: 15, height: 15).padding(1).background(Color(.white))
                                
                                Text("\(source1)")
                                    .foregroundColor(Color("\(fontColor)"))
                                    .padding(1)
                                
                            }
                            HStack {
                                
                                Image("facebook_icon").resizable().frame(width: 15, height: 15).padding(1).background(Color(.white))
                                
                                Text("\(source4)")
                                    .foregroundColor(Color("\(fontColor)"))
                                    .padding(1)
                                
                            }
                            HStack {
                                
                                Image("Instagram_icon").resizable().frame(width: 15, height: 15).padding(1).background(Color(.white))
                                
                                Text("\(source3)")
                                    .foregroundColor(Color("\(fontColor)"))
                                    .padding(1)
                                
                            }
                            HStack {
                                
                                Image("linkedin_icon").resizable().frame(width: 15, height: 15).padding(1).background(Color(.white))
                                
                                Text("\(source2)")
                                    .foregroundColor(Color("\(fontColor)"))
                                    .padding(1)
                                
                            }.padding(.bottom, 30)
                        }.frame(width: 200, height: 200, alignment: .center )
                    }
                }.background(Color("\(boxColor)")).cornerRadius(10.0).shadow(color: Color("Shadow"), radius: 10, x: 0, y: 5).frame(width: 300, height:0, alignment: .center)
                Spacer()
                Spacer()
                
            }.onAppear{ handleFontColor()}
        }

    }
    
    func handleFontColor(){
        if (boxColor == "light" && fontColor == "dark"  && background.lightmode == Gradient(colors: [.white, Color("Background"), Color("DarkBackground")])) {
            fontColor = "dark"
            boxColor = "light"
        } else if (background.lightmode == Gradient(colors: [.black, Color("DarkBackground"), Color(".black")]) ) {
            fontColor = "light"
            boxColor = "dark"
        }
    }
   
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().environmentObject(Background())
    }
}

