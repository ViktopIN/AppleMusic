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
        
    let row = [GridItem(.fixed(150))]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: row, spacing: 10) {
                ForEach(0..<4) { index in
                    HorizontalScrollViewCell(type: "FEATURED STATION",
                                             name: name[index],
                                             producer: producer[index],
                                             imageName: "\(index + 1)")
                }
            }
        }
    }
}

struct HorizontalScrollView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScrollView()
    }
}
