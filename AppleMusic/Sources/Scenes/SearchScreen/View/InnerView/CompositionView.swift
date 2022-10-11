//
//  CompositionView.swift
//  AppleMusic
//
//  Created by Виктор on 10.10.2022.
//

import SwiftUI

struct CompositionView: View {
    let trackModel: TrackModel
    var body: some View {
        VStack {
            HStack {
                Image(trackModel.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                VStack(alignment: .leading) {
                    Spacer()
                    Text(trackModel.author)
                    Text("Песня \u{00B7} \(trackModel.song)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                }
                .padding(.leading, 10)
                Spacer()
                Image(systemName: "ellipsis")
            }
        }
        .frame(width: .infinity, height: Metrics.compositionHeight, alignment: .leading)
    }
}

struct CompositionView_Previews: PreviewProvider {
    static var previews: some View {
        CompositionView(trackModel: ModelData().tracks[1])
    }
}

extension CompositionView {
    enum Metrics {
        static let compositionHeight: CGFloat = UIScreen.main.bounds.height / 13
    }
}
