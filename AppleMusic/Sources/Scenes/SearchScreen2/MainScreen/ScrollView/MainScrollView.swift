//
//  MainScrollView.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct MainScrollView: View {
    private let columns = [
        GridItem(.flexible(minimum: 100, maximum: 240),
                 spacing: 15,
                 alignment: .leading),
        GridItem(.flexible(minimum: 100, maximum: 240),
                 spacing: 15,
                 alignment: .trailing),
    ]
    
    private func getList() -> [String] {
        var list = [String]()
        for i in 1..<13 {
            list.append("main.\(String(i))")
        }
        return list
    }
    
    var body: some View {
        let listOfItems = getList()
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack(alignment: .leading, spacing: 5) {
                Text("Поиск по категориям")
                    .bold()
                    .font(.title)
                LazyVGrid (columns: columns) {
                    ForEach(0..<listOfItems.count) { index in
                        ScrollViewCell(image: listOfItems[index])
                            .frame( minHeight: 100, idealHeight: 150, maxHeight: 200)
                    }
                }
            }
        }
    }
}

struct MainScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MainScrollView()
    }
}
