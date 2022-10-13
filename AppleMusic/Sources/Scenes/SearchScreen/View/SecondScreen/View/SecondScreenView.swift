//
//  SecondScreenView.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct SecondScreenView: View {
    let secondScreenModel: CategoryModel
    let navigationTitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(navigationTitle.longTitleWrap())
                .font(.largeTitle)
                .bold()
                .padding(.leading)
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(alignment: .leading) {
                    TopPartView(cellsModel: secondScreenModel.topPartValues)
                    Divider()
                    BottomPartView(bottomPartModel: secondScreenModel.bottomPartValues)
                        .padding(.bottom, 80)
                }
                .padding(.leading)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SecondScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreenView(secondScreenModel: .demoValue, navigationTitle: "Тайтл")
    }
}

