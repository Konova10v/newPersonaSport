//
//  View+PartialSheetModifier.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 13.07.2021.
//

import SwiftUI

extension View {
    /**
     Add a PartialSheet to the current view. You should attach it to your Root View.
     Use the PartialSheetManager as an environment object to present it whenever you want.
     - parameter style: The style configuration for the Partial Sheet.
     */
    public func addPartialSheet(
        style: PartialSheetStyle = PartialSheetStyle.defaultStyle()) -> some View {
        self.modifier(
            PartialSheet(
                style: style
            )
        )
    }
}
