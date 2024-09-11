//
//  MainTabBarView.swift
//  R&M
//
//  Created by Dima Kosik on 5.06.24.
//

import Foundation
import SwiftUI

struct MainTabBarView: View {
    @State var isSplash = true
    
    var body: some View {
        if isSplash {
            SplashView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation(.easeOut(duration: 0.6)) {
                            isSplash = false
                        }
                    }
                }
        } else {
            TabView {
                CharactersListView()
                    .tabItem {
                        TabItemView(
                            image: "charactersIcon",
                            title: "Characters"
                        )
                    }
                LocationsListView()
                    .tabItem {
                        TabItemView(
                            image: "locationsIcon",
                            title: "Locations"
                        )
                    }
            }
        }
    }
}
