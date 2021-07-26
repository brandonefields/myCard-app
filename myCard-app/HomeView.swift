//
//  HomeView.swift
//  myCard-app
//
//  Created by Brandon Fields on 7/25/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        Group {
            VStack {
                CasualBcard()
                BizCajBcard()
                CasualBcard()
                HStack {
                    Button(action: {
                        withAnimation {
                            viewRouter.currentPage = .page1
                    }
                })
                    {
                    CasualDetailButton()
                    BusinessCasualButton()
                    ProfessionalButton()
                    
                }
                
            }
            
            TabView {
                    SingleTabView(pageTitle: "",
                                  imageName: "house.fill",
                                  tabTitle: "Home",
                                  index: 0)
                    SingleTabView(pageTitle: "Profile",
                                  imageName: "person.crop.circle",
                                  tabTitle: "Profile",
                                  index: 1)
                    SingleTabView(pageTitle: "My Cards",
                                  imageName: "rectangle.dashed",
                                  tabTitle: "My Cards",
                                  index: 2)
                    SingleTabView(pageTitle: "Log Out",
                                  imageName: "figure.walk",
                                  tabTitle: "Log Out",
                                  index: 3)
                   
                }
            }
            
        }
        .background(
                LinearGradient(gradient: Gradient(colors: [Color("Background"), Color("DarkBackground")]), startPoint: .top, endPoint: .bottom)
            )
//        .background(Color("Background"))
        .edgesIgnoringSafeArea( .all)
        
    }
    
    
}
            
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(ViewRouter())
    }
}

struct CasualBcard : View {
    var body: some View {
        return
            Image("casual_b_card")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 170)
            .cornerRadius(5)
            .shadow(radius: 10)
            .padding(.top, 45)
            .padding(.bottom,1)
            
    }
}

struct BizCajBcard : View {
    var body: some View {
        return
            Image("biz_caj_card")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 170)
            .cornerRadius(5)
            .shadow(radius: 10)
            .padding(.top, 45)
            .padding(.bottom,1)
        
    }
}


struct LogOutButton : View {
    var body: some View {
        return Text("Log Out")
            .foregroundColor(.white)
            .frame(width: 80, height: 40)
            .background(Color("PrimaryColor"))  .cornerRadius(15)
            .padding(.top, 20)
    }
}
    
struct CasualDetailButton : View {
    var body: some View {
        return Text("Casual")
            .foregroundColor(Color("DarkBackground"))
            .frame(width:80, height: 45)
            .background(Color("PrimaryColor"))  .cornerRadius(15)
            .padding(6)
            .shadow(radius: 10)
            .padding(.top, 15)
            .padding(.bottom,30)
        }
}

struct BusinessCasualButton : View {
    var body: some View {
        return Text("Biz Caj")
            .foregroundColor(Color("DarkBackground"))
            .frame(width: 80, height: 45)
            .background(Color("PrimaryColor"))  .cornerRadius(15)
            .padding(6)
            .shadow(radius: 10)
            .padding(.bottom,30)
            .padding(.top, 15)
    }
}

struct ProfessionalButton : View {
    var body: some View {
        return Text("Pro")
            .foregroundColor(Color("DarkBackground"))
            .frame(width: 80, height: 45)
            .background(Color("PrimaryColor"))  .cornerRadius(15)
            .padding(.top, 15)
            .padding(.bottom,30)
            .padding(10)
            .shadow(radius: 10)
    }
}

struct SingleTabView: View {
    var pageTitle: String
    var imageName: String
    var tabTitle: String
    var index: Int
    var body: some View {

        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text(pageTitle)
                    .font(.largeTitle)
            }
            .foregroundColor(.accentColor)
        }
        .tabItem {
            Image(systemName: imageName)
            Text(tabTitle)
        }.tag(index)
    }

}
