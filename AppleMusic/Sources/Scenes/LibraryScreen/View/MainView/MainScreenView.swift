//
//  MainScreenView.swift
//  AppleMusic
//
//  Created by Виктор on 02/09/2022.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Ищите свою музыку?")
                .font(.title2)
                .bold()
            Text("Здесь появится купленная вами в\niTunes Store музыка.")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
            Spacer()
                .frame(height: 250)
            PlayerView()
            Divider()
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
