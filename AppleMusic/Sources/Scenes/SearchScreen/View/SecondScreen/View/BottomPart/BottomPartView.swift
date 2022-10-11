//
//  BottomPartView.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct BottomPartView: View {
    let bottomPartModel: BottomCellsViewModel

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Text("Избранные плейлисты")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                .offset(y: 5)
                BottomPartScrollView(bottomCellsModel: bottomPartModel)
            }
        }
    }
}

struct BottomPartView_Previews: PreviewProvider {

    static var previews: some View {
        BottomPartView(bottomPartModel: .demoValue)
    }
}

