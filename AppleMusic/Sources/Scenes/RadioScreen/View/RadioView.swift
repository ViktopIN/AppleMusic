//
//  RadioView.swift
//  AppleMusic
//
//  Created by Виктор on 04/09/2022.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                Divider()
                    .padding(.leading, 22)
                HorizontalScrollView()
                    .padding(.leading, 22)
            })
            .navigationTitle("Radio")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
