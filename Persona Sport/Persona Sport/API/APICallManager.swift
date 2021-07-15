//
//  APICallManager.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 29.06.2021.
//

import Foundation

/// enum с перечеслинение ошибок
enum ServiceError: Error {
    case serverError
    case noMoreLoad
    case other(msg: String)
    case decodableError
}

enum ServerAPI {
    static var baseURL = "https://sport.psfood.ru/api/"
    
    ///Данные пользователя
    static var authorization = "init/"
}
