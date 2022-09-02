//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Виктор on 02/09/2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            TabView {
                Text("Mediateka Tab")
                    .tabItem {
                        Image(systemName: "rectangle.stack")
                        Text("Медиатека")
                    }
                Text("Radio Tab")
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
            .accentColor(.red)
            .navigationTitle("Медиатека")
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
