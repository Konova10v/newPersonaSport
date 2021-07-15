//
//  FreezeTheCard.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 13.07.2021.
//

import SwiftUI

struct FreezeTheCard: View {
    // MARK: - Параметры
    @EnvironmentObject var myCardVM: MyCardViewModel
    
    @EnvironmentObject var partialSheet: PartialSheetManager
    @EnvironmentObject var showFullScreen: ShowFullScreen
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // MARK: - Кнопка назад
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            showFullScreen.showFreezeCard = false
        }) {
            HStack {
                Image("close")
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
                        Spacer()
                        
                        backButton
                    }
                    .padding(.horizontal, 20.75)
                }
                .frame(height: 44)
                
                VStack(alignment: .leading, spacing: 32) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Заморозка карты")
                            .font(Font.gilroySemibold(size: 27))
                            .lineSpacing(3.2)
                        
                        if myCardVM.freeze {
                            Text("Карта заморожена")
                                .font(Font.gilroyMedium(size: 17))
                                .foregroundColor(Color("secondary1"))
                        }
                    }
                    
                    VStack(alignment: .leading, spacing: 16) {
                        HStack(spacing: 8) {
                            Text("24")
                                .font(Font.gilroySemibold(size: 32))
                            
                            Text("дня")
                                .font(Font.gilroyMedium(size: 17))
                        }
                        .frame(height: 40)
                        
                        Text("осталось периода заморозки")
                            .font(Font.gilroyMedium(size: 17))
                            .foregroundColor(Color("darkLighter"))
                            .frame(height: 40)
                    }
                }
                .padding(.horizontal, 16)
                
                Spacer()
                
                if myCardVM.freeze {
                    Button(action: {
                        myCardVM.freeze = false
                    }) {
                        Text("Разморозить")
                            .font(Font.gilroySemibold(size: 17))
                            .frame(width: UIScreen.screenWidth - 32, height: 56)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(8)
                    }
                    .padding(.horizontal, 16)
                    .padding(.bottom, 12)
                } else {
                    Button(action: {
                        self.partialSheet.showPartialSheet({
                            NSLog("dismissed")
                        }) {
                            EnterFreezeCard()
                        }
                    }, label: {
                        Text("Заморозить")
                            .font(Font.gilroySemibold(size: 17))
                            .frame(width: UIScreen.screenWidth - 32, height: 56)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .cornerRadius(8)
                    })
                    .padding(.horizontal, 16)
                    .padding(.bottom, 12)
                }
            }
        }
    }
}

struct FreezeTheCard_Previews: PreviewProvider {
    static var previews: some View {
        FreezeTheCard()
    }
}
