//
//  EditScreenView.swift
//  AppleMusic
//
//  Created by Виктор on 03/09/2022.
//

import SwiftUI

struct EditScreenView: View {
    let coloredNavAppearance = UINavigationBarAppearance()

    @Environment(\.presentationMode) var mode: Binding<PresentationMode>

    @State private var selection = Set<String>()
    
    init() {
        coloredNavAppearance.configureWithOpaqueBackground()
        coloredNavAppearance.backgroundColor = .white
        coloredNavAppearance.shadowColor = .white
               
        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    @State private var listImage = ["music.note.list", "music.mic", "square.stack","music.note",  "tv", "music.note.tv", "guitars", "person.2.crop.square.stack", "music.quarternote.3", "arrow.down.circle", "music.note.house"]
    @State private var listLabel = ["Плейлисты", "Артисты", "Альбомы", "Песни", "Телешоу и фильмы", "Видеоклипы", "Жанры", "Сборники", "Авторы", "Загружено", "Домашняя коллекция"]
    
    var body: some View {
    
        NavigationView {
            VStack {
                List(selection: $selection) {
                    ForEach(listLabel, id: \.self) { index in
                        CellView(label: index, image: listImage[listLabel.firstIndex(of: index)!])
                    }
                    .onMove(perform: move)
                }
                .listStyle(.inset)
                .environment(\.editMode, .constant(EditMode.active))
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
    
     func move(from source: IndexSet, to destination: Int) {
        listLabel.move(fromOffsets: source, toOffset: destination)
        listImage.move(fromOffsets: source, toOffset: destination)
    }
}

struct EditScreenView_Previews: PreviewProvider {
    static var previews: some View {
        EditScreenView()
    }
}
