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
                VStack {
                    Spacer()
                    Text("Ищите свою музыку?")
                        .font(.title2)
                        .bold()
                    Text("Здесь появится купленная вами в\niTunes Store музыка.")
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    Spacer()
                        .frame(height: 270)
                    PlayerView()
                    Divider()
                }
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
            .onAppear() {
                UITabBar.appearance().backgroundColor = UIColor(red: 247/255,
                                                                green: 246/255,
                                                                blue: 246/255,
                                                                alpha: 1)
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
