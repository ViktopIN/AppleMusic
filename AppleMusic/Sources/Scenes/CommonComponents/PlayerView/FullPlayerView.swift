//
//  FullPlayerView.swift
//  AppleMusic
//
//  Created by Виктор on 11.10.2022.
//

import SwiftUI

struct FullPlayerView: View {

    @Environment(\.dismiss) private var dismiss
    @Binding var isPlaying: Bool

    var body: some View {
        VStack {
            Capsule()
                .fill(.secondary)
                .frame(width: 40, height: 5)
            Spacer(minLength: 50)

            Image("albumCover")
                .resizable()
                .cornerRadius(10)
                .scaledToFit()
                .scaleEffect(isPlaying ? 1 : 0.8)
            Spacer()

            Group {
                PlayerTitleView()
                Spacer()

                PlayerTimerView()
                Spacer()

                PlayerMediaButtonsView(isPlaying: $isPlaying)
                Spacer()
            }

            Group {
                PlayerVolumeView()
                Spacer()

                PlayerOptionButtonsView()
                Spacer()
            }
        }
        .padding(.horizontal, 30)
        .gesture(
            DragGesture().onEnded { value in
                if value.location.y - value.startLocation.y > 100 {
                    dismiss()
                }
            })
    }
}

struct FullPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        FullPlayerView(isPlaying: .constant(false))
    }
}
