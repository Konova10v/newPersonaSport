//
//  AuthPhone.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 26.06.2021.
//

import SwiftUI
import Combine

// MARK: - Номер телефона и код из смс
struct AuthPhone: View {
    // MARK: - Параметры
    @State var phoneNumber: String = ""
    @State var code: String = ""
    @State var timeRemaining = 1
    @State var timer = Timer.publish(every: 1,
                                     on: .main,
                                     in: .common).autoconnect()
    @State var auth: Bool = false
    @State var isEditing: Bool = true
    
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
            
            if phoneNumber.count < 12 {
                VStack(alignment: .leading, spacing: 32) {
                    Text("Введите свой номер телефона для входа в приложение")
                        .font(Font.gilroySemibold(size: 27))
                        .lineSpacing(3.2)

                    VStack(alignment: .leading, spacing: 24) {
                        HStack(spacing: 8) {
                            Text("+7")
                                .font(Font.gilroySemibold(size: 32))
                            
                            TextField("000-00-00", text: $phoneNumber)
                                .font(Font.gilroySemibold(size: 32))
                                .keyboardType(.phonePad)
                                .onChange(of: phoneNumber) { value in
                                    if value.count == 3 {
                                        phoneNumber += "-"
                                    } else if value.count == 7 {
                                        phoneNumber += "-"
                                    }
                                }
                        }

                        Text("При входе или регистрации вы принимаете условия Пользовательского соглашения и Политику обработки персональных данных")
                            .font(Font.gilroyMedium(size: 15))
                            .foregroundColor(Color("darkLighter"))
                            .fixedSize(horizontal: false, vertical: true)
                            .lineSpacing(1.6)
                    }
                }
                .padding(.horizontal, 16)
            } else {
                VStack(alignment: .leading, spacing: 32) {
                    Text("Мы отправили код подтверждения в SMS на ваш номер телефона")
                        .font(Font.gilroySemibold(size: 27))
                        .lineSpacing(3.2)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    VStack(spacing: timeRemaining != 0 ? 36 : 26) {
                        TextField("0000", text: $code)
                            .font(Font.gilroySemibold(size: 32))
                            .keyboardType(.phonePad)
                        
                        if timeRemaining != 0 {
                            Text("\(timeRemaining)")
                                .font(Font.gilroySemibold(size: 17))
                                .padding(.vertical, 16)
                                .frame(width: UIScreen.screenWidth - 32)
                                .foregroundColor(.white)
                                .background(Color.black.opacity(0.3))
                                .cornerRadius(8)
                                .onReceive(timer) { time in
                                    if timeRemaining > 0 {
                                        timeRemaining -= 1
                                    }
                                }
                        } else {
                            VStack(alignment: .leading, spacing: 28) {
                                Text("Код подтверждения истек")
                                    .font(Font.gilroyMedium(size: 15))
                                    .foregroundColor(Color("disruptive"))
                                
                                Button(action: {
                                    
                                }) {
                                    NavigationLink(destination: AuthName()) {
                                        Text("Запросить новый")
                                            .font(Font.gilroySemibold(size: 17))
                                            .frame(width: UIScreen.screenWidth - 32, height: 56)
                                            .foregroundColor(.white)
                                            .background(Color.black)
                                            .cornerRadius(8)
                                    }
                                }
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct AuthPhone_Previews: PreviewProvider {
    static var previews: some View {
        AuthPhone()
    }
}
