//
//  MainView.swift
//  airbnb-clone-b
//
//  Created by Alumno on 10/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    TabItem(text: "Explore", image: "magnifing")
                }
            WishListView()
                .tabItem {
                    TabItem(text: "Wishlist", image: "heart")
                }
            TripsView()
                .tabItem {
                    TabItem(text: "Trips", image: "logo-icon")
                }
            InboxView()
                .tabItem {
                    TabItem(text: "inbox", image: "inbox")
                }
            ProfileView()
                .tabItem {
                    TabItem(text: "Profile", image: "profile")
                }
        }
        .tint(Color("AirbnbPrimary"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
