//
//  AuthPatronymic.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 26.06.2021.
//

import SwiftUI

// MARK: - Отчество
struct AuthPatronymic: View {
    // MARK: - Параметры
    @State var patronymic: String = ""
    
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
                    
                    Button(action: {
                        
                    }) {
                        Text("Пропустить")
                            .font(Font.gilroyMedium(size: 17))
                            .foregroundColor(Color("darkLighter"))
                    }
                }
                .padding(.leading, 23)
                .padding(.trailing, 16)
            }
            .frame(height: 44)
            
            VStack(alignment: .leading, spacing: 32) {
                Text("Пожалуйста введите ваше отчество?")
                    .font(Font.gilroySemibold(size: 27))
                    .lineSpacing(3.2)
                
                VStack(spacing: 37) {
                    TextField("Отчество", text: $patronymic)
                        .font(Font.gilroySemibold(size: 32))
                    
                    Button(action: {
                        
                    }) {
                        NavigationLink(destination: AuthBirthday()) {
                            Text("Подтвердить")
                                .font(Font.gilroySemibold(size: 17))
                                .frame(width: UIScreen.screenWidth - 32, height: 56)
                                .foregroundColor(.white)
                                .background(patronymic.isEmpty ? Color.black.opacity(0.3) : Color.black)
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

struct AuthPatronymic_Previews: PreviewProvider {
    static var previews: some View {
        AuthPatronymic()
    }
}
