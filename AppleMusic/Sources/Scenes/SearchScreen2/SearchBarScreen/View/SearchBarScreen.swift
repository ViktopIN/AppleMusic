//
//  SearchBarScreen.swift
//  AppleMusic
//
//  Created by Виктор on 04/10/2022.
//

import SwiftUI

struct SearchBarScreen: View {
    @State private var segmentsSelection = "Apple Music"
    private var searchSegments = ["Apple Music", "Your Library"]
    var body: some View {
        VStack {
            Picker("SearchSegments", selection: $segmentsSelection) {
                ForEach(searchSegments,
                        id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(.segmented)
            PlaylistView()
        }
    }
}

struct SearchBarScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarScreen()
    }
}
