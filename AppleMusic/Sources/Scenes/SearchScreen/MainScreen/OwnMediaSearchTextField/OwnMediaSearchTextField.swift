//
//  OwnMediaSearchTextField.swift
//  AppleMusic
//
//  Created by Виктор on 02/10/2022.
//

import SwiftUI

struct OwnMediaSearchTextField: View {
    @State private var mediaSearchText = String()
    var body: some View {
        AppleMusicSearchTextFieldStyle(textField: TextField("Ваша Медиатека", text: $mediaSearchText),
                                       imageName: "magnifyingglass")
    }
}

struct AppleMusicSearchTextFieldStyle: View {
    var textField: TextField<Text>
    var imageName: String
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.darkShadow)
            textField
        }
        .padding([.top, .bottom], 10)
        .padding([.trailing, .leading], 5)
        .foregroundColor(.neumorphictextColor)
        .font(.title2)
        .background(Color.background)
        .cornerRadius(10)
    }
}

struct OwnMediaSearchTextField_Previews: PreviewProvider {
    static var previews: some View {
        OwnMediaSearchTextField()
    }
}

extension Color {
    static let lightShadow = Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
    static let darkShadow = Color(red: 163 / 255, green: 177 / 255, blue: 198 / 255)
    static let background = Color(red: 224 / 255, green: 229 / 255, blue: 236 / 255)
    static let neumorphictextColor = Color(red: 132 / 255, green: 132 / 255, blue: 132 / 255)
}
