//
//  MainSearchScreen.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct MainSearchScreen: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                OwnMediaSearchTextField()
                Divider()
                    .padding(.top, 12)
                MainScrollView()
            }
        }
    }
}

struct MainSearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainSearchScreen()
    }
}
