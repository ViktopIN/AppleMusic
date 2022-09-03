//
//  EditScreenView.swift
//  AppleMusic
//
//  Created by Виктор on 03/09/2022.
//

import SwiftUI

struct EditScreenView: View {
    let listImage = ["music.note.list", "music.mic", "square.stack","music.note",  "tv", "music.note.tv", "guitars", "person.2.crop.square.stack", "music.quarternote.3", "arrow.down.circle", "music.note.house"]
    let listLabel = ["Плейлисты", "Артисты", "Альбомы", "Песни", "Телешоу и фильмы", "Видеоклипы", "Жанры", "Сборники", "Авторы", "Загружено", "Домашняя коллекция"]
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<11) { index in
                    HStack {
                        Image(systemName: listImage[index])
                            .foregroundColor(.red)
                        Text(listLabel[index])
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Медиатека")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        LibraryView()
                    } label: {
                        Text("Готово")
                            .font(.title2)
                            .foregroundColor(.red)
                    }

                }
            }
        }
    }
}

struct EditScreenView_Previews: PreviewProvider {
    static var previews: some View {
        EditScreenView()
    }
}
