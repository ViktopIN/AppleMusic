//
//  TopPartCell.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct TopPartCell: View {
    let type: String
    let name: String
    let producer: String
    let imageName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Divider()
                .padding(.bottom, 15)
            Text(type)
                .font(.caption)
                .foregroundColor(.gray)
            Text(name)
                .font(.title2)
            Text(producer)
                .font(.title2)
                .foregroundColor(.gray)
                .lineLimit(1)
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
        }
        .padding(.trailing, 10)
        .offset(y: -10)
    }
}

struct TopPartCell_Previews: PreviewProvider {
    static var previews: some View {
        TopPartCell(type: "ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО",
                    name: "Mixtape, Vol. 1 - EP",
                    producer: "Kane Brown",
                    imageName: "secondView.top.1.1")
    }
}
