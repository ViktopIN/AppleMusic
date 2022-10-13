//
//  Playlist model.swift
//  AppleMusic
//
//  Created by Виктор on 10.10.2022.
//

import Foundation

struct PlaylistModel {
    private let albumsCoversName = ["albumCover" ,
                                    "2004",
                                    "anti",
                                    "astroworld",
                                    "bitch.love",
                                    "blanck.face",
                                    "taboo",
                                    "trap.lord",
                                    "ultramarine",
                                    "you.shouldve.know"]
    private let artistName = ["Kendrick Lamar" ,
                             "Скриптонит",
                             "Rihanna",
                             "Travis Scott",
                             "Михей",
                             "Schoolboy Q",
                             "Denzel Curry",
                             "Asap Ferg",
                             "Wesley Joseph",
                             "Serious Klein"]
    private let songName = ["LOVE" ,
                           "Похвастаться",
                           "Need Me",
                           "STARGAZING",
                           "Сука-Любовь",
                           "That Part",
                           "TA13OO",
                           "Work(Remix)",
                           "Patience",
                           "God Love"]
    
    subscript(trackNumber: Int) -> CompositionModel {
        get {
            let compositionModel = CompositionModel(albumCoverName: self.albumsCoversName[trackNumber],
                                                    artistName: self.artistName[trackNumber],
                                                    songName: self.songName[trackNumber])
            return compositionModel
        }
    }
}

struct CompositionModel {
    let albumCoverName: String
    let artistName: String
    let songName: String
}
