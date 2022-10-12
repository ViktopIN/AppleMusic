//
//  PlayerTitleView.swift
//  AppleMusic
//
//  Created by Виктор on 11.10.2022.
//
//

import SwiftUI

struct PlayerTitleView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Kendrick Lamar")
                    .fontWeight(.bold)
                    .foregroundColor(.primary)

                Text("LOVE")
                    .foregroundColor(.secondary)
            }
            .font(.title2)

            Spacer()

            Button {
                print("Option button pressed")
            } label: {
                Image(systemName: "ellipsis.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: Metrics.imageFrameWidth, height: Metrics.imageFrameWidth)
                    .foregroundColor(.lightGray)
            }
        }
    }
}

struct PlayerTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerTitleView()
    }
}

extension PlayerTitleView {
    enum Metrics {
        static let imageFrameWidth: CGFloat  = 24
    }
}
