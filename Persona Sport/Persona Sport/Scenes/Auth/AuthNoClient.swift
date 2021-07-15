//
//  AuthNoClient.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 27.06.2021.
//

import SwiftUI

struct AuthNoClient: View {
    // MARK: - Параметры
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
        VStack(spacing: 24.15) {
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
            
            VStack(spacing: 55.87) {
                Image("logo")
                
                VStack(alignment: .leading, spacing: 24) {
                    Text("Мы обнаружили, что вы еще не являетесь клиентом нашего клуба.")
                        .font(Font.gilroyMedium(size: 17))
                        .lineSpacing(2.4)
                    
                    Text("Предлагаем вам выбрать параметры будущей карты. Если цена вас не устроит, вы сможете отказаться от покупки в данный момент.")
                        .font(Font.gilroyMedium(size: 17))
                        .lineSpacing(2.4)
                }
                .padding(.horizontal, 16)
            }
            
            Spacer()
            
            VStack(spacing: 20) {
                Button(action: {
                    
                }) {
                    Text("Пропустить")
                        .font(Font.gilroySemibold(size: 17))
                        .frame(width: UIScreen.screenWidth - 32)
                        .foregroundColor(Color("darkLighter"))
                }
                
                    NavigationLink(destination: TabBar()) {
                        Text("Подтвердить")
                            .font(Font.gilroySemibold(size: 17))
                            .frame(width: UIScreen.screenWidth - 32, height: 56)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(8)
                    }
            }
            .padding(.bottom, 12)
        }
        .navigationBarHidden(true)
    }
}

struct AuthNoClient_Previews: PreviewProvider {
    static var previews: some View {
        AuthNoClient()
    }
}
