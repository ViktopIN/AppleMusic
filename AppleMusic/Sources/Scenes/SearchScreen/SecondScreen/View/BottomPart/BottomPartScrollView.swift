//
//  BottomPartScrollView.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct BottomPartScrollView: View {
    let bottomCellsModel: BottomCellsViewModel
        
    let row = [GridItem(.fixed(250))]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: row, spacing: 15) {
                ForEach(0..<3) { index in
                    BottomPartViewCell(type: bottomCellsModel.type[index],
                                       producer: bottomCellsModel.producer[index],
                                       imageName: bottomCellsModel.image[index])
              }
                .frame(width: Metrics.frameWidth)
            }
        }
    }
}

struct BottomPartScrollView_Previews: PreviewProvider {
    
    static var previews: some View {
        BottomPartScrollView(bottomCellsModel: .demoValue)
    }
}

extension BottomPartScrollView {
    enum Metrics {
        static let frameWidth: CGFloat = UIScreen.main.bounds.width / 2.2
    }
}
