//
//  MyCard.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 12.07.2021.
//

import SwiftUI

struct MyCard: View {
    // MARK: - Параметры
    @EnvironmentObject var showFullScreen: ShowFullScreen
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
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
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
            
            VStack(spacing: 16) {                
                MainMyCard(statusCard: "Карта активна", mainScreen: false)
                
                VStack(spacing: 0) {
                    Button(action: {
                        showFullScreen.showDeposit.toggle()
                    }) {
                        VStack(spacing: 0) {
                            HStack(spacing: 8) {
                                Image("wallet")
                                
                                Text("Пополнить депозит")
                                    .font(Font.gilroyMedium(size: 21))
                                    .foregroundColor(Color("secondary1"))
                                
                                Spacer()
                                
                                Image("nextView")
                            }
                            .padding(.leading, 16)
                            .padding(.trailing, 23.5)
                            .padding(.vertical, 24)
                            
                            Divider()
                                .padding(.leading, 49)
                        }
                    }
                    
                    Button(action: {
                        showFullScreen.showFreezeCard.toggle()
                    }) {
                        VStack(spacing: 0) {
                            HStack(spacing: 8) {
                                Image("snowflake")
                                
                                Text("Заморозить карту")
                                    .font(Font.gilroyMedium(size: 21))
                                    .foregroundColor(Color("secondary1"))
                                
                                Spacer()
                                
                                Image("nextView")
                            }
                            .padding(.leading, 16)
                            .padding(.trailing, 23.5)
                            .padding(.vertical, 24)
                            
                            Divider()
                                .padding(.leading, 49)
                        }
                    }
                    
                    Button(action: {
                        showFullScreen.showAvailableWorkouts.toggle()
                    }) {
                        VStack(spacing: 0) {
                            HStack(spacing: 8) {
                                Image("barbell")
                                
                                Text("Доступные тренировки")
                                    .font(Font.gilroyMedium(size: 21))
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Image("nextView")
                            }
                            .padding(.leading, 16)
                            .padding(.trailing, 23.5)
                            .padding(.vertical, 24)
                            
                            Divider()
                                .padding(.leading, 49)
                        }
                    }
                    
                    Button(action: {
                        showFullScreen.showAboutCard.toggle()
                    }) {
                        VStack(spacing: 0) {
                            HStack(spacing: 8) {
                                Image("creditCard")
                                
                                Text("О карте")
                                    .font(Font.gilroyMedium(size: 21))
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                Image("nextView")
                            }
                            .padding(.leading, 16)
                            .padding(.trailing, 23.5)
                            .padding(.vertical, 24)
                            
                            Divider()
                                .padding(.leading, 49)
                        }
                    }
                    
                    Button(action: {
                        showFullScreen.showAboutClub.toggle()
                    }) {
                        VStack(spacing: 0) {
                            HStack(spacing: 8) {
                                Image("houseSimple")
                                
                                Text("О клубе")
                                    .font(Font.gilroyMedium(size: 21))
                                
                                Spacer()
                                
                                Image("nextView")
                            }
                            .padding(.leading, 16)
                            .padding(.trailing, 23.5)
                            .padding(.vertical, 24)
                            
                            Divider()
                                .padding(.leading, 49)
                        }
                    }
                }
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard()
            .environmentObject(MainViewModel())
    }
}
