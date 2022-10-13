//
//  PlaylistView.swift
//  AppleMusic
//
//  Created by Виктор on 10.10.2022.
//

import SwiftUI

struct PlaylistView: View {
    @State var playlistModel = PlaylistModel()
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10) { index in
                    Divider()
                    CompositionView(trackModel: ModelData().tracks[0])
            }
            }
        }
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView(playlistModel: PlaylistModel())
    }
}
