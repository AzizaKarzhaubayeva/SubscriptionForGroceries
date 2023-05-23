//
//  ContentView.swift
//  SubscriptionForGroceries
//
//  Created by Aziza Karzhaubayeva on 22.05.2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        
        TabView{
            
            HomePageView()
                .tabItem{
                    Image("ic-homepage")
                        .renderingMode(.template)
                        
                }
            
            SearchMenuView()
                .tabItem{
                    Image("ic-searchmenu")
                        .renderingMode(.template)
                        
                }
            BasketView()
                .tabItem{
                    Image("ic-cart")
                        .renderingMode(.template)
                }
            
            FavoritesView()
                .tabItem{
                    Image("ic-heart")
                        .renderingMode(.template)
                }
            
            PersonalPageView()
                .tabItem{
                    Image("ic-pineapple")
                        .renderingMode(.template)
                }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
