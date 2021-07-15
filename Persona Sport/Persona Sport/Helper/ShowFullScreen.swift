//
//  ShowFullScreen.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 12.07.2021.
//

import SwiftUI

final class ShowFullScreen: ObservableObject {
    @Published var showDeposit = false
    @Published var showFreezeCard = false
    @Published var showAvailableWorkouts = false
    @Published var showAboutCard = false
    @Published var showAboutClub = false
}
