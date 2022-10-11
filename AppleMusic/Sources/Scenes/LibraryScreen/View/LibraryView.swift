//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Виктор on 02/09/2022.
//

import SwiftUI

struct LibraryView: View {

    var body: some View {
        ZStack {
            CustomTabView()
                .accentColor(.red)
                .onAppear() {
                    UITabBar.appearance().backgroundColor = UIColor(red: 247/255,
                                green: 246/255,
                                blue: 246/255,
                                alpha: 1)
            }
            PlayerView()
                .offset(y: -48)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
            .previewInterfaceOrientation(.portrait)
    }
}
