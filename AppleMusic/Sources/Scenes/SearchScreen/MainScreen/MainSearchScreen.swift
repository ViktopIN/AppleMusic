//
//  MainSearchScreen.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct MainSearchScreen: View {
    @State var searchText = ""
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    MainScrollView()
                }
                .navigationTitle("Search")
            }
        }
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Your Media") {
            SearchBarScreen()
        }
    }
}

struct MainSearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainSearchScreen()
    }
}
