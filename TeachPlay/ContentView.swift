//
//  ContentView.swift
//  TeachPlay
//
//  Created by Виктор Евграфов on 26.09.2024.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    // Intro Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    // Active Tab
    @State private var activeTab: Tab = .home
    var body: some View {
            TabView(selection: $activeTab){
                Home()
                    .tag(Tab.home)
                    .tabItem { Tab.home.tabContent }

                Rating()
                    .tag(Tab.rating)
                    .tabItem { Tab.rating.tabContent }
                
                Profile()
                    .tag(Tab.profile)
                    .tabItem { Tab.profile.tabContent }
                
                Settings()
                    .tag(Tab.settings)
                    .tabItem { Tab.settings.tabContent }
                
                
            }
            .tint(appTint)
            .sheet(isPresented: $isFirstTime, content: {
                IntroScreen()
                    .interactiveDismissDisabled()
            })
        }
    }

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
