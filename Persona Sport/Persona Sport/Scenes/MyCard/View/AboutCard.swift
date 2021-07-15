//
//  AboutCard.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 13.07.2021.
//

import SwiftUI

struct AboutCard: View {
    // MARK: - Параметры
    @EnvironmentObject var showFullScreen: ShowFullScreen
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // MARK: - Кнопка назад
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            showFullScreen.showAboutCard = false
        }) {
            HStack {
                Image("backButton")
                    .foregroundColor(.black)
            }
        }
    }
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea(.all)
            
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
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(alignment: .leading, spacing: 16) {
                        Text("О карте")
                            .font(Font.gilroySemibold(size: 27))
                            .lineSpacing(3.2)
                            .padding(.horizontal, 16)
                        
                            VStack(alignment: .leading, spacing: 0) {
                                Group {
                                Text("Клуб")
                                    .font(Font.gilroyMedium(size: 15))
                                    .foregroundColor(Color("darkLighter"))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.top, 20)
                                    .padding(.bottom, 4)
                                    .background(Color("darkVeryLight"))
                                
                                Text("Pushkin Fitness")
                                    .font(Font.gilroyMedium(size: 17))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.vertical, 12)
                                }
                                Group {
                                Text("Имя держателя")
                                    .font(Font.gilroyMedium(size: 15))
                                    .foregroundColor(Color("darkLighter"))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.top, 20)
                                    .padding(.bottom, 4)
                                    .background(Color("darkVeryLight"))
                                
                                Text("Иванов Иван Иванович")
                                    .font(Font.gilroyMedium(size: 17))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.vertical, 12)
                                }
                                
                                Group {
                                Text("Тип карты")
                                    .font(Font.gilroyMedium(size: 15))
                                    .foregroundColor(Color("darkLighter"))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.top, 20)
                                    .padding(.bottom, 4)
                                    .background(Color("darkVeryLight"))
                                
                                Text("По количеству посещений")
                                    .font(Font.gilroyMedium(size: 17))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.vertical, 12)
                                }
                                
                                Group {
                                Text("Номер карты")
                                    .font(Font.gilroyMedium(size: 15))
                                    .foregroundColor(Color("darkLighter"))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.top, 20)
                                    .padding(.bottom, 4)
                                    .background(Color("darkVeryLight"))
                                
                                Text("2342349854")
                                    .font(Font.gilroyMedium(size: 17))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.vertical, 12)
                                }
                                
                                Group {
                                Text("Дата покупки")
                                    .font(Font.gilroyMedium(size: 15))
                                    .foregroundColor(Color("darkLighter"))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.top, 20)
                                    .padding(.bottom, 4)
                                    .background(Color("darkVeryLight"))
                                
                                Text("16.05.2021")
                                    .font(Font.gilroyMedium(size: 17))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.vertical, 12)
                                }
                                
                                Group {
                                Text("Срок действия")
                                    .font(Font.gilroyMedium(size: 15))
                                    .foregroundColor(Color("darkLighter"))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.top, 20)
                                    .padding(.bottom, 4)
                                    .background(Color("darkVeryLight"))
                                
                                Text("16.05.2021")
                                    .font(Font.gilroyMedium(size: 17))
                                    .padding(.horizontal, 16)
                                    .frame(width: UIScreen.screenWidth, alignment: .leading)
                                    .padding(.vertical, 12)
                                }
                                
                                VStack {
                                    
                                }
                                .frame(width: UIScreen.screenWidth, height: 32, alignment: .leading)
                                .background(Color("darkVeryLight"))
                                
                                HStack(spacing: 8) {
                                    Image("contract")
                                    
                                    Text("Контракт")
                                        .font(Font.gilroyMedium(size: 17))
                                    
                                    Spacer()
                                    
                                    Image("nextView")
                                }
                                .padding(.leading, 13)
                                .padding(.trailing, 23.5)
                                .padding(.vertical, 12)
                                
                                VStack {
                                    
                                }
                                .frame(width: UIScreen.screenWidth, height: 32, alignment: .leading)
                                .background(Color("darkVeryLight"))
                                
                                VStack(alignment: .center) {
                                    Button(action: {

                                    }) {
                                        Text("Подтвердить")
                                            .font(Font.gilroySemibold(size: 17))
                                            .frame(width: UIScreen.screenWidth - 32, height: 56, alignment: .center)
                                            .foregroundColor(.white)
                                            .background(Color.black)
                                            .cornerRadius(8)
                                    }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 12)
                                }
                            }
                    }
                })
            }
        }
    }
}

struct AboutCard_Previews: PreviewProvider {
    static var previews: some View {
        AboutCard()
    }
}
