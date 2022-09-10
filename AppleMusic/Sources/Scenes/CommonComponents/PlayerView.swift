//
//  PlayerView.swift
//  AppleMusic
//
//  Created by Виктор on 02/09/2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height:12)
            HStack {
                Spacer()
                    .frame(width: 16)
                Image("albumCover")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fit)
                    .shadow(color: .secondary,
                            radius: 6,
                            x: 0,
                            y: 5)
                Text("LOVE")
                    .padding(.leading, 6)
                Spacer()
                    .frame(width: .infinity)
                Image(systemName: "pause.fill")
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 5)
                    .frame(width: 28, height: 28, alignment: .center)
                Image(systemName: "forward.fill")
                Spacer()
                    .frame(width: 16)
            }
            Spacer()
                .frame(height:12)
        }
        .background(Color(UIColor(red: 247/255,
                                  green: 246/255,
                                  blue: 246/255,
                                  alpha: 1)))
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}