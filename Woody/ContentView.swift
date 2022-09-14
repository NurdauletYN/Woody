//
//  ContentView.swift
//  Woody
//
//  Created by user on 14.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .home
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0.0) {
            TabView(selection: $currentTab) {
                HomeView()
                    .tag(Tab.home)
                
                Text("Location")
                    .tag(Tab.location)
                
                Text("Profile")
                    .tag(Tab.profile)
            }
            CustomTabBar(currentTab: $currentTab)
        }
        .ignoresSafeArea(.keyboard)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
