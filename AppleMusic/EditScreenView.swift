//
//  EditScreenView.swift
//  AppleMusic
//
//  Created by Виктор on 03/09/2022.
//

import SwiftUI

let coloredNavAppearance = UINavigationBarAppearance()

struct EditScreenView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = .white
        coloredNavAppearance.shadowColor = .white
               
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    let listImage = ["music.note.list", "music.mic", "square.stack","music.note",  "tv", "music.note.tv", "guitars", "person.2.crop.square.stack", "music.quarternote.3", "arrow.down.circle", "music.note.house"]
    let listLabel = ["Плейлисты", "Артисты", "Альбомы", "Песни", "Телешоу и фильмы", "Видеоклипы", "Жанры", "Сборники", "Авторы", "Загружено", "Домашняя коллекция"]

    var body: some View {
    
        NavigationView {
            VStack {
                List {
                    ForEach(0..<11) { index in
                        CellView(label: listLabel[index], image: listImage[index])
                    }
                }
                .listStyle(.grouped)
                .navigationTitle("Медиатека")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            self.mode.wrappedValue.dismiss()
                        } label: {
                            Text("Готово")
                                .foregroundColor(.red)
                                .font(.title2)
                        }
                    }
                }
                PlayerView()
            }
        }
    }
}

struct EditScreenView_Previews: PreviewProvider {
    static var previews: some View {
        EditScreenView()
    }
}
