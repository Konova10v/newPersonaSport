//
//  Service.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 29.06.2021.
//

import SwiftUI
import Alamofire
import Combine

final class Service {
    private func getAuthorizationURL() -> URL? {
        let queryURL = URL(string: ServerAPI.baseURL + ServerAPI.authorization)!
        let components = URLComponents(url: queryURL, resolvingAgainstBaseURL: true)
        guard var urlComponents = components else { return nil }
        urlComponents.queryItems = [URLQueryItem(name: "Authorization", value: "60d9ef695cf3b8.45800427")]
        return urlComponents.url
    }
    
    func getAuthorization() -> AnyPublisher<MainScreenModel, AFError> {
        let publisher = AF.request(getAuthorizationURL()?.absoluteString ?? "").publishDecodable(type: MainScreenModel.self)
        return publisher.value()
    }
}
