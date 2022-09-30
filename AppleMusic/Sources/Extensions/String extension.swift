//
//  String extension.swift
//  AppleMusic
//
//  Created by Виктор on 30/09/2022.
//

import Foundation

extension String {
    func longTitleWrap() -> String {
        if self.count >= 13 {
            var selfString = self
            selfString.insert(contentsOf: "-\n",
                              at: selfString.index(startIndex, offsetBy: 13))
            return selfString
        } else {
            return self
        }
    }
}
