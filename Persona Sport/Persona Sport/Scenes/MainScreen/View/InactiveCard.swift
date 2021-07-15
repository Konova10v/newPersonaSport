//
//  InactiveCard.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 23.06.2021.
//

import SwiftUI

struct InactiveCard: View {
    @State var statusCard: String
    
    var body: some View {
        if statusCard == "Нет карты" {
            VStack(alignment: .center, spacing: 14.75) {
                VStack {
                    Image("noCard")
                }
                .frame(width: 72, height: 58.5, alignment: .center)
                
                VStack(spacing: 4) {
                    Text("У вас нет активных карт")
                        .font(Font.gilroySemibold(size: 17))
                        .padding(.horizontal, 16)
                    
                    Text("Нажмите, чтобы приобрести")
                        .font(Font.gilroyMedium(size: 15))
                        .padding(.horizontal, 16)
                }
            }
            .frame(width: UIScreen.screenWidth - 32, height: 192)
            .background(Color("darkVeryLight"))
            .cornerRadius(8)
        } else if statusCard == "Истек срок" {
            VStack(alignment: .center, spacing: 14.75) {
                VStack {
                    Image("expiredCard")
                }
                .frame(width: 72, height: 58.5, alignment: .center)
                
                VStack(spacing: 4) {
                    Text("Срок вашей карты истек")
                        .font(Font.gilroySemibold(size: 17))
                        .padding(.horizontal, 16)
                    
                    Text("Нажмите, чтобы продлить")
                        .font(Font.gilroyMedium(size: 15))
                        .padding(.horizontal, 16)
                }
            }
            .frame(width: UIScreen.screenWidth - 32, height: 192)
            .background(Color("darkVeryLight"))
            .cornerRadius(8)
        }
    }
}

struct InactiveCard_Previews: PreviewProvider {
    static var previews: some View {
        InactiveCard(statusCard: "Нет карты")
    }
}
