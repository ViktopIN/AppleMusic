//
//  CategoryModel.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import Foundation

struct CategoryModel {
    let topPartValues: TopCellsViewModel
    let bottomPartValues: BottomCellsViewModel
    
    static let demoValue = CategoryModel(topPartValues: .demoValue,
                                         bottomPartValues: .demoValue)
}

struct TopCellsViewModel {
    let name: [String]
    let type: [String]
    let producer: [String]
    let image: [String]
    
    static let demoValue = TopCellsViewModel(name: ["Kane Brown",
                                                    "Billie Eilish",
                                                    "Apple Music"],
                                             type: ["ТЕПЕРЬ В ПРОСТРАНСТВЕННОМ АУДИО",
                                                    "ИЗБРАННЫЙ АЛЬБОМ",
                                                    "ИЗБРАННЫЙ ПЛЕЙЛИСТ"],
                                             producer: ["Mixtape, Vol.1 - EP",
                                                        "Happier Than Ever",
                                                        "Созданно для пространственного аудио"],
                                             image: ["secondView.top.1.1",
                                                     "secondView.top.1.2",
                                                     "secondView.top.1.3"])
}

struct BottomCellsViewModel {
    let type: [String]
    let producer: [String]
    let image: [String]
    
    static let demoValue = BottomCellsViewModel(type: ["Создано для пространственного аудио",
                                                       "Джаз в пространственном аудио",
                                                       "K-Pop в пространственном аудио"],
                                                producer: ["Apple Music",
                                                           "Apple Music Джаз",
                                                           "Apple Music"],
                                                image: ["secondView.top.1.4",
                                                        "secondView.top.1.5",
                                                        "secondView.top.1.6"])
}
