//
//  BlurEffectView.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 13.07.2021.
//

import SwiftUI

/// An UIViewRepresentable for the UIBlurEffectView
struct BlurEffectView: UIViewRepresentable {
    /// The style of the Blut Effect View
    var style: UIBlurEffect.Style = .systemMaterial

    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}
