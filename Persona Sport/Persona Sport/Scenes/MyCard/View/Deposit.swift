//
//  Deposit.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 12.07.2021.
//

import SwiftUI

struct Deposit: View {
    // MARK: - Параметры
    @State var summa: String = ""
    @State var summaSelect: Bool = false
    
    @EnvironmentObject var showFullScreen: ShowFullScreen
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // MARK: - Кнопка назад
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            showFullScreen.showDeposit = false
        }) {
            HStack {
                Image("close")
            }
        }
    }
    
    var body: some View {
        if !summaSelect {
            ZStack {
                Color.white
                    .ignoresSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 16) {
                    ZStack {
                        Color.white
                            .ignoresSafeArea()
                        HStack {
                            Spacer()
                            
                            backButton
                        }
                        .padding(.horizontal, 23)
                    }
                    .frame(height: 44)
                    
                    VStack(alignment: .leading, spacing: 32) {
                        Text("Пожалуйста введите сумму депозита?")
                            .font(Font.gilroySemibold(size: 27))
                            .lineSpacing(3.2)
                        
                        VStack(spacing: 28) {
                            TextField("Сумма", text: $summa)
                                .font(Font.gilroySemibold(size: 32))
                                .keyboardType(.numberPad)
                            
                            if summa.isEmpty {
                                Text("Пополнить")
                                    .font(Font.gilroySemibold(size: 17))
                                    .frame(width: UIScreen.screenWidth - 32, height: 56)
                                    .foregroundColor(.white)
                                    .background(Color.black.opacity(0.3))
                                    .cornerRadius(8)
                            } else {
                                Button(action: {
                                    summaSelect.toggle()
                                }) {
                                    Text("Пополнить")
                                        .font(Font.gilroySemibold(size: 17))
                                        .frame(width: UIScreen.screenWidth - 32, height: 56)
                                        .foregroundColor(.white)
                                        .background(Color.black)
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
        } else {
            ZStack {
                Color.white
                    .ignoresSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    VStack(spacing: 32) {
                        Image("depositOK")
                        
                        Text("Депозит успешно пополнен")
                            .font(Font.gilroySemibold(size: 27))
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                        showFullScreen.showDeposit = false
                    }) {
                        Text("Ок")
                            .font(Font.gilroySemibold(size: 17))
                            .frame(width: UIScreen.screenWidth - 32, height: 56)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(8)
                    }
                    .padding(.bottom, 12)
                }
                .navigationBarHidden(true)
            }
        }
    }
}
