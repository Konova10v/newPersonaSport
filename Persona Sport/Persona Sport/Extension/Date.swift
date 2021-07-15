//
//  Date.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 01.07.2021.
//

import Foundation

extension Date {
   func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
