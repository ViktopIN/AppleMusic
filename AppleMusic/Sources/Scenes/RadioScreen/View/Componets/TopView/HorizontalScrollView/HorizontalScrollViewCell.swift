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
        VStack(alignment: .leading, spacing: 1) {
            Divider()
                .padding(.bottom, 7)
            Text(type)
                .font(.subheadline)
                .foregroundColor(.gray)
            Text(name)
                .font(.title)
            Text(producer)
                .font(.title)
                .padding(.top, -7)
                .foregroundColor(.gray)
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: 220, alignment: .center)
                .cornerRadius(10)
        }
    }
}

struct HorizontalScrollViewCell_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollViewCell(type: "FEATURED STATION", name: "Soft Pop Station", producer: "Apple Music Pop", imageName: "1")
            .previewInterfaceOrientation(.portrait)
    }
}
