//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Виктор on 02/09/2022.
//

import SwiftUI

struct LibraryView: View {

    var body: some View {
        TabView {
            NavigationView {
                ZStack {
                    MainScreenView()
                        .navigationTitle("Медиатека")
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                NavigationLink {
                                        EditScreenView()
                                            .navigationBarHidden(true)
                                            .navigationTitle("Медиатека")
                                } label: {
                                    Text("Править")
                                        .font(.title2)
                                        .foregroundColor(.red)
                                }
                            }
                        }
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
            .accentColor(.red)
            .onAppear() {
                UITabBar.appearance().backgroundColor = UIColor(red: 247/255,
                                                                green: 246/255,
                                                                blue: 246/255,
                                                                alpha: 1)
            }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
