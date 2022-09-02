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
                            .renderingMode(.original)
                            .foregroundColor(Color.red)
                    }
                Text("Mediateka Tab")
                    .tabItem {
                        Image(systemName: "rectangle.stack")
                            .renderingMode(.original)
                            .foregroundColor(Color.red)
                    }
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
