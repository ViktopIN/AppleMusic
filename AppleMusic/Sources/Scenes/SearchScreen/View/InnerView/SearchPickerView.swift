//
//  SearchPickerView.swift
//  AppleMusic
//
//  Created by Виктор on 11.10.2022.
//

import SwiftUI

struct SearchPickerView: View {

    @Binding var selectedSearchTag: Int
    @Binding var searchText: String
    @Binding var searchPlaceholder: String
    @State var model: ModelData

    var body: some View {
        VStack(alignment: .leading) {
            Picker("SearchSource", selection: $selectedSearchTag) {
                Text("Apple Music").tag(0)
                Text("Ваша медиатека").tag(1)
            }
            .onChange(of: selectedSearchTag) { tag in
                if tag == 0 {
                    searchPlaceholder = "Артисты, песни, тексты и др."
                } else {
                    searchPlaceholder = "Ваша медиатека"
                }
            }
            .pickerStyle(.segmented)
        }

        if searchText.isEmpty {
            ForEach(model.tracks) { result in
                CompositionView(trackModel: result) }
        } else {
            ForEach(model.tracks.filter { $0.song.contains(searchText) || $0.author.contains(searchText)  }) { result in
                CompositionView(trackModel: result)
            }
        }
    }
}
