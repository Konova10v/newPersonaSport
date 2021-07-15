//
//  AuthName.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 26.06.2021.
//

import SwiftUI

// MARK: - Имя
struct AuthName: View {
    // MARK: - Параметры
    @State var name: String = ""
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // MARK: - Кнопка назад
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image("backButton")
                    .foregroundColor(.black)
            }
        }
    }
    
    // MARK: - UI
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                HStack {
                    backButton
                    
                    Spacer()
                }
                .padding(.horizontal, 23)
            }
            .frame(height: 44)
            
            VStack(alignment: .leading, spacing: 32) {
                Text("Пожалуйста введите ваше имя?")
                    .font(Font.gilroySemibold(size: 27))
                
                VStack(spacing: 37) {
                    TextField("Имя", text: $name)
                        .font(Font.gilroySemibold(size: 32))
                    
                    Button(action: {
                        
                    }) {
                        NavigationLink(destination: AuthSurname()) {
                            Text("Подтвердить")
                                .font(Font.gilroySemibold(size: 17))
                                .frame(width: UIScreen.screenWidth - 32, height: 56)
                                .foregroundColor(.white)
                                .background(name.isEmpty ? Color.black.opacity(0.3) : Color.black)
                                .cornerRadius(8)
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct AuthName_Previews: PreviewProvider {
    static var previews: some View {
        AuthName()
    }
}
