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
            VStack {
                ScrollView(.vertical, showsIndicators: false, content: {
                    LazyVStack {
                        HorizontalScrollView()
                        Divider()
                            .padding(.top, 20)
                        BottomLazyVStackView()
                    }
                    .padding(.leading, 21)
                })
            }
            .navigationTitle("Radio")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
