//
//  CustomTabView.swift
//  AppleMusic
//
//  Created by Виктор on 12/09/2022.
//

import SwiftUI

struct CustomTabView: View {
    var body: some View {
        TabView {
            NavigationView {
                ZStack {
                    MainScreenView()
                    PlayerView()
                }
            }
            .tabItem {
                Image (systemName: "rectangle.stack")
                Text("Медиатека")
            }
            ZStack {
                RadioView()
                PlayerView()
            }
                .tabItem {
                            Image(systemName: "dot.radiowaves.left.and.right")
                            Text("Радио")
                    }
            ZStack {
                Text("Search Tab")
                PlayerView()
            }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
            }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
