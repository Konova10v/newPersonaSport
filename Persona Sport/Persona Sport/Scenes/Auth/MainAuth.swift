//
//  MainAuth.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 26.06.2021.
//

import SwiftUI

// MARK: - Главный экран авторизации
struct MainAuth: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    // MARK: - UI
    var body: some View {
        NavigationView {
            ZStack() {
                Color.black
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Image("whiteLogo")
                    Spacer()
                    
                    NavigationLink(destination: AuthPhone()) {
                        Text("Войти")
                            .font(Font.gilroySemibold(size: 17))
                            .frame(width: UIScreen.screenWidth - 32, height: 56, alignment: .center)
                            .background(Color.white)
                            .foregroundColor(.black)
                            .cornerRadius(8)
                    }
                }
                .padding(.bottom, 44)
            }
            .navigationBarHidden(true)
        }
    }
}

struct MainAuth_Previews: PreviewProvider {
    static var previews: some View {
        MainAuth()
    }
}
