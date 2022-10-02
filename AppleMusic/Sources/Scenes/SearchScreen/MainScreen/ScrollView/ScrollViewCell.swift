//
//  ScrollViewCell.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct ScrollViewCell: View {
    let image: String
    var body: some View {
        NavigationLink {
            SecondScreenView(secondScreenModel: .demoValue)
        } label: {
            Image(image)
                .resizable()
                .cornerRadius(12)
        }

    }
}

struct ScrollViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewCell(image: "main.1")
    }
}
