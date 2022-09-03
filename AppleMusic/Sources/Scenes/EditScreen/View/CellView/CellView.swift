//
//  CellView.swift
//  AppleMusic
//
//  Created by Виктор on 03/09/2022.
//

import SwiftUI

struct CellView: View {
    let label: String
    let image: String
    var body: some View {
        HStack {
            Image(systemName: image)
                .resizable(resizingMode: .tile)
                .foregroundColor(.red)
                .frame(width: 22,height: 22)
                .aspectRatio(contentMode: .fit)
                .padding(.trailing, 10.0)
                
            Text(label)
                .font(.title)
        }
        .frame(height: 60)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(label: "Mic", image: "music.mic")
    }
}
