//
//  RadioView.swift
//  AppleMusic
//
//  Created by Виктор on 04/09/2022.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false,
                   content: {
            LazyVStack {
                HorizontalScrollView()
                    .navigationTitle("Radio")
                Divider()
                    .padding(.top, 10)
                    .padding(.trailing, 10)
                BottomLazyVStackView()
            }
            .padding(.leading, 21)
        })
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
