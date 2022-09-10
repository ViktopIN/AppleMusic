//
//  BottomLazyVStackViewCell.swift
//  AppleMusic
//
//  Created by Виктор on 04/09/2022.
//

import SwiftUI

struct BottomLazyVStackViewCell: View {
    let name: String
    let describe: String
    let imageName: String
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Image(imageName)
                .resizable(resizingMode: .stretch)
                .frame(width: 100, height: 100, alignment: .center)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 2) {
                Text(name)
                Text(describe)
                    .padding(.top, -4)
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .frame(width: .infinity, height: 100, alignment: .center)
    }
}

struct BottomLazyVStackViewCell_Previews: PreviewProvider {
    static var previews: some View {
        BottomLazyVStackViewCell(name: "Russian Chanson",
                                 describe: "Apple Music Russian", imageName: "8")
    }
}
