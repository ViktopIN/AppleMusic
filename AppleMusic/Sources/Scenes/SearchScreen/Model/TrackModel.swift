//
//  TrackModel.swift
//  AppleMusic
//
//  Created by Виктор on 11.10.2022.
//

import Foundation


import Foundation

struct TrackModel: Identifiable, Hashable {
    let id = UUID()
    var author: String
    var song: String
    var image: String
}

extension TrackModel {
    static func getData() -> [TrackModel] {
        let tracks = [
        TrackModel(author: "Kendrick Lamar", song: "LOVE", image: "albumCover"),
        TrackModel(author: "Скриптонит", song:  "Похвастаться", image: "2004"),
        TrackModel(author: "Rihanna", song: "Need Me", image: "anti"),
        TrackModel(author: "Wu-Tang Clan", song: "C.R.E.A.M", image: "wutang"),
        TrackModel(author: "Travis Scott", song: "STARGAZING", image: "astroworld"),
        TrackModel(author: "Михей", song: "Сука-Любовь", image: "bitch.love"),
        TrackModel(author: "Schoolboy Q", song: "That Part", image: "blanck.face"),
        TrackModel(author: "Denzel Curry", song: "TA13OO", image: "taboo"),
        TrackModel(author: "Asap Ferg", song: "Work(Remix)", image: "trap.lord"),
        TrackModel(author: "Wesley Joseph", song: "Patience", image: "ultramarine"),
        TrackModel(author: "Serious Klein", song: "God Love", image: "you.shouldve.know")
        ]

        return tracks
    }
}
