//
//  HorizontalScrollView.swift
//  AppleMusic
//
//  Created by Виктор on 04/09/2022.
//

import SwiftUI

struct HorizontalScrollView: View {
    let name = ["Soft Pop Station",
                "Hits Station",
                "Hip-Hop Station",
                "Pop Station"]
    let producer = ["Apple Music Pop",
                    "Apple Music Hits",
                    "Apple Music Hip-Hop",
                    "Apple Music Pop"]
        
    let row = [GridItem(spacing: 10)]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: row) {
            TabView {
                    ForEach(0..<4) { index in
                        HorizontalScrollViewCell(type: "FEATURED STATION",
                                                 name: name[index],
                                                 producer: producer[index],
                                                 imageName: "\(index + 1)")
                  }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .frame(width: Metrics.frameWidth, height: Metrics.frameHeight)
            }
        }
    }
}

struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}

extension HorizontalScrollView {
    enum Metrics {
        static let frameWidth: CGFloat = UIScreen.main.bounds.width -  15
        static let frameHeight: CGFloat = UIScreen.main.bounds.height / 2.4
    }
}
