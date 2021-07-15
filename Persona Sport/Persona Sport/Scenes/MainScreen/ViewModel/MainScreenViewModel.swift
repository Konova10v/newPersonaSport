//
//  MainScreenViewModel.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 29.06.2021.
//

import SwiftUI
import Combine

class MainViewModel: ObservableObject {
    var cancellation: AnyCancellable?
    let service = Service()
    
    //output
    @Published var mainScreenСategories = MainScreenModel.placeholder
    
    init() {
        fetchAuthorization()
    }
    
    func fetchAuthorization() {
        cancellation = service.getAuthorization()
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: { _ in }, receiveValue: { data in
                self.mainScreenСategories = data
            })
    }
}
