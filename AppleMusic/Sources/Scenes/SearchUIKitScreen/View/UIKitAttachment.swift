//
//  UIKitAttachment.swift
//  AppleMusic
//
//  Created by Виктор on 11.10.2022.
//

import SwiftUI

struct UIKitAttachment: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> some UIViewController {
        return UINavigationController(rootViewController: MainUIKitController())
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {

    }
}
