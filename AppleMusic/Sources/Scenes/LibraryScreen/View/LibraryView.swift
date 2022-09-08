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
                            }
                        }
                    }
            }
            .tabItem {
                Image (systemName: "rectangle.stack")
                Text("Медиатека")
            }
            VStack {
                Spacer()
                Text("Radio Tab")
                Spacer()
                PlayerView()
                Divider()
                
            }
            .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                }
            VStack {
                Spacer()
                Text("Search Tab")
                Spacer()
                PlayerView()
                Divider()
                
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
