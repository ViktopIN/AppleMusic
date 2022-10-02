//
//  BottomPartViewCell.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct BottomPartViewCell: View {
    let type: String
    let producer: String
    let imageName: String
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                Text(type)
                    .font(.title2)
                    .lineLimit(1)
                Text(producer)
                    .font(.title2)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            
        }
    }
}

struct BottomPartViewCell_Previews: PreviewProvider {
    static var previews: some View {
        BottomPartViewCell(type: "Создано для пространственного аудио",
                           producer: "Apple Music",
                           imageName: "secondView.top.1.4")
    }
}

extension BottomPartViewCell {
    enum Metrics {
        static let frameWidth: CGFloat = UIScreen.main.bounds.width / 1.6
        static let frameHeight: CGFloat = UIScreen.main.bounds.height / 3
    }
}
