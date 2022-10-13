//
//  BottomLazyVStackView.swift
//  AppleMusic
//
//  Created by Виктор on 04/09/2022.
//

import SwiftUI

struct BottomLazyVStackView: View {
    let name = ["Chill Station",
                "Pop In Russian Station",
                "Classic Hip-Hop Station",
                "Russian Chanson",
                "Halloween Party Station",
                "Rock In Russian Station"]
    let describe = ["Apple Music Chill",
                    "Apple Music Russian Pop",
                    "Apple Music Classic Hip-Hop",
                    "Apple Music Russian",
                    "Apple Music Holiday",
                    "Apple Music Russian Rock"]
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Stations")
                .font(.largeTitle)
                .bold()
            ForEach(5..<11) { index in
                BottomLazyVStackViewCell(name: name[index - 5], describe: describe[index - 5], imageName: ("\(index)"))
                    .padding(.top, 10)
            }
        }
    }
}

struct BottomLazyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        BottomLazyVStackView()
    }
}
