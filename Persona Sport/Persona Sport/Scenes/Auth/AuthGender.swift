//
//  AuthGender.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 26.06.2021.
//

import SwiftUI

// MARK: - Выбор пола
struct AuthGender: View {
    // MARK: - Параметры
    @State var man: Bool = false
    @State var woman: Bool = false
    
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
        VStack(spacing: 30) {
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
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Пожалуйста, выберите пол")
                    .font(Font.gilroySemibold(size: 27))
                    .padding(.horizontal, 16)
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 12) {
                        Image(man ? "checkActive" : "checkNotActive")
                        
                        Text("Мужской")
                            .font(Font.gilroyMedium(size: 21))
                        
                        Spacer()
                    }
                    .padding(.vertical, 24)
                    .padding(.horizontal, 16)
                    .onTapGesture {
                        man.toggle()
                        
                        if woman {
                            woman.toggle()
                        }
                    }
                    
                    Divider()
                        .padding(.leading, 48)
                    
                    HStack(spacing: 12) {
                        Image(woman ? "checkActive" : "checkNotActive")
                        
                        Text("Женский")
                            .font(Font.gilroyMedium(size: 21))
                    }
                    .padding(.vertical, 24)
                    .padding(.horizontal, 16)
                    .onTapGesture {
                        woman.toggle()
                        
                        if man {
                            man.toggle()
                        }
                    }
                    
                    Divider()
                        .padding(.leading, 48)
                }
            }
            
            Spacer()
            
            Button(action: {
                
            }) {
                NavigationLink(destination: AuthCountChildren()) {
                    Text("Подтвердить")
                        .font(Font.gilroySemibold(size: 17))
                        .frame(width: UIScreen.screenWidth - 32, height: 56)
                        .foregroundColor(.white)
                        .background(!man && !woman ? Color.black.opacity(0.3) : Color.black)
                        .cornerRadius(8)
                }
            }
            .padding(.bottom, 12)
        }
        .navigationBarHidden(true)
    }
}

struct AuthGender_Previews: PreviewProvider {
    static var previews: some View {
        AuthGender()
    }
}
