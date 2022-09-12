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
                MainScreenView()
            }
            .tabItem {
                Image (systemName: "rectangle.stack")
                Text("Медиатека")
            }
            NavigationView {
                RadioView()
            }
                .tabItem {
                            Image(systemName: "dot.radiowaves.left.and.right")
                            Text("Радио")
                    }
            Text("Search Tab")
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
