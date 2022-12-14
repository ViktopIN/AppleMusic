//
//  HorizontalScrollViewCell.swift
//  AppleMusic
//
//  Created by Виктор on 04/09/2022.
//

import SwiftUI

struct HorizontalScrollViewCell: View {
    let type: String
    let name: String
    let producer: String
    let imageName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Spacer()
                .frame(height: 2)
            Divider()
                .padding([.trailing, .bottom], 15)
            Text(type)
                .font(.caption)
                .foregroundColor(.gray)
            Text(name)
                .font(.title2)
            Text(producer)
                .font(.title2)
                .foregroundColor(.gray)
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
        }
        .padding(.trailing, 10)
    }
}

struct HorizontalScrollViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollViewCell(type: "FEATURED STATION", name: "Soft Pop Station", producer: "Apple Music Pop", imageName: "1")
            .previewInterfaceOrientation(.portrait)
    }
}
