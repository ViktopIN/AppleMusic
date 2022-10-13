//
//  ModelData.swift
//  AppleMusic
//
//  Created by Виктор on 11.10.2022.
//

import Foundation

class ModelData: ObservableObject {
    @Published var searchCategories: [SearchCategoryModel] = SearchCategoryModel.getData()
    @Published var tracks: [TrackModel] = TrackModel.getData()
    @Published var secondScreenModel = CategoryModel.demoValue
}
