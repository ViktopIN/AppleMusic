//
//  TopPartView.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct TopPartView: View {
    let cellsModel: TopCellsViewModel
    
    private let frameWidth: CGFloat = UIScreen.main.bounds.width * 0.95
    private var frameHeight: CGFloat {
        if UIScreen.main.bounds.height > 700 {
            return UIScreen.main.bounds.height / CGFloat(2.45)
        }
        return UIScreen.main.bounds.height / CGFloat(2.05)
    }
        
    let row = [GridItem()]
    var body: some View {
        LazyHGrid(rows: row) {
            TabView {
                ForEach(0..<3) { index in
                    TopPartCell(type: cellsModel.type[index],
                                name: cellsModel.name[index],
                                producer: cellsModel.producer[index],
                                imageName: cellsModel.image[index])
              }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: frameWidth,
                   height: frameHeight)
        }
    }
}
struct TopPartView_Previews: PreviewProvider {
    
    static var previews: some View {
        TopPartView(cellsModel: .demoValue)
    }
}

