//
//  Fonts.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 23.06.2021.
//

import SwiftUI

extension Font {
    static func gilroySemibold(size: CGFloat) -> Font {
        return Font.custom("Gilroy-Semibold", size: getSizeWithAdoptation(size))
    }
    
    static func gilroyMedium(size: CGFloat) -> Font {
        return Font.custom("Gilroy-Medium", size: getSizeWithAdoptation(size))
    }
    
    static func gilroyBold(size: CGFloat) -> Font {
        return Font.custom("Gilroy-Bold", size: getSizeWithAdoptation(size))
    }
    
    //Уменьшаем шрифт, если экран маленький
    static func getSizeWithAdoptation(_ size: CGFloat) -> CGFloat {
        if UIScreen.main.bounds.height <= CGFloat(568) {
            return size - 3.0
        } else {
            return size
        }
    }
}
