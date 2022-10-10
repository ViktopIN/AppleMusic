//
//  String extension.swift
//  AppleMusic
//
//  Created by Виктор on 30/09/2022.
//

import Foundation

extension String {
    func longTitleWrap() -> String {
        if self.count >= 8 {
            var selfString = self
            selfString.insert(contentsOf: "-\n",
                              at: selfString.index(startIndex, offsetBy: 8))
            return selfString
        } else {
            return self
        }
    }
}
