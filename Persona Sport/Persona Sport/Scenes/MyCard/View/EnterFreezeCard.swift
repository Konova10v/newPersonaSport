//
//  EnterFreezeCard.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 13.07.2021.
//

import SwiftUI

// MARK: -
struct EnterFreezeCard: View {
    // MARK: - Параметры
    @EnvironmentObject var myCardVM: MyCardViewModel
    
    @State var day: String = ""
    @EnvironmentObject var partialSheetManager: PartialSheetManager
    
    // MARK: -  UI
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
                Text("Пожалуйста, введите количество дней заморозки")
                    .font(Font.gilroySemibold(size: 27))
                    .lineSpacing(3.2)
                    .frame(width: UIScreen.screenWidth - 32, alignment: .leading)
                    .padding(.horizontal, 16)
                
                VStack(spacing: 28) {
                    VStack(alignment: .leading, spacing: 16) {
                        TextField("Дней", text: $day)
                            .font(Font.gilroySemibold(size: 32))
                            .keyboardType(.numberPad)
                            .padding(.horizontal, 16)
                        
                        if !day.isEmpty {
                            if Int(day) ?? 0 <= 4 {
                                Text("Минимум 5 дней")
                                    .font(Font.gilroyMedium(size: 15))
                                    .foregroundColor(Color("disruptive"))
                                    .padding(.horizontal, 16)
                            }
                        }
                    }
                    
                    if Int(day) ?? 0 <= 4 {
                        Text("Пополнить")
                            .font(Font.gilroySemibold(size: 17))
                            .frame(width: UIScreen.screenWidth - 32, height: 56)
                            .foregroundColor(.white)
                            .background(Color.black.opacity(0.3))
                            .cornerRadius(8)
                    } else {
                        Button(action: {
                            myCardVM.freeze = true
                            partialSheetManager.closePartialSheet()
                        }) {
                            Text("Заморозить")
                                .font(Font.gilroySemibold(size: 17))
                                .frame(width: UIScreen.screenWidth - 32, height: 56)
                                .foregroundColor(.white)
                                .background(Color.black)
                                .cornerRadius(8)
                        }
                    }
                }
            }
            .frame(height: 296)
            .background(RoundedCorners(topLeft: 10,
                                       topRight: 10,
                                       bottomLeft: 0,
                                       bottomRight: 0)
                            .fill(Color.white))
    }
}


struct EnterFreezeCard_Previews: PreviewProvider {
    static var previews: some View {
        EnterFreezeCard()
    }
}
