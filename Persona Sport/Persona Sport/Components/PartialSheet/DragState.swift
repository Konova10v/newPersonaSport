//
//  DragState.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 13.07.2021.
//

import UIKit

/// This enum helps to handle the drag state
enum DragState {
    case inactive
    case dragging(translation: CGSize)
    var translation: CGSize {
        switch self {
        case .inactive:
            return .zero
        case .dragging(let translation):
            return translation
        }
    }
    var isDragging: Bool {
        switch self {
        case .inactive:
            return false
        case .dragging:
            return true
        }
    }
}
