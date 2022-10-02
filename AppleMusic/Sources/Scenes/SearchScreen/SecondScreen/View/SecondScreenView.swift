//
//  SecondScreenView.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct SecondScreenView: View {
    let secondScreenModel: CategoryModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(alignment: .leading) {
                Text(secondScreenModel.navigationTitle.longTitleWrap())
                    .bold()
                    .font(.largeTitle)
                TopPartView(cellsModel: secondScreenModel.topPartValues)
                Divider()
                BottomPartView(bottomPartModel: secondScreenModel.bottomPartValues)
            }
            .padding(.leading)
        }
    }
}

struct SecondScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreenView(secondScreenModel: .demoValue)
    }
}

