//
//  MainTabView.swift
//  SideMenu
//
//  Created by paramroop kaur on 05/10/22.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            HomeView()
                .onTapGesture {
                    self.selectedIndex = 0
                }.tabItem { Image(systemName: "house") }.tag(0)
            
            SearchView()
                .onTapGesture {
                    self.selectedIndex = 0
                }.tabItem { Image(systemName: "magnifyingglass") }.tag(0)
            
            FavoriteView()
                .onTapGesture {
                    self.selectedIndex = 0
                }.tabItem { Image(systemName: "heart") }.tag(0)
            
            MessageView()
                .onTapGesture {
                    self.selectedIndex = 0
                }.tabItem { Image(systemName: "envelope") }.tag(0)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
