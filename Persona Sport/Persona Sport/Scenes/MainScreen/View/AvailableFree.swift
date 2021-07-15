//
//  AvailableFree.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 23.06.2021.
//

import SwiftUI

struct AvailableFree: View {
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Text("Доступно бесплатно")
                    .font(Font.gilroyBold(size: 21))
                
                Spacer()
                
                Text("Все")
                    .font(Font.gilroySemibold(size: 15))
                    .foregroundColor(Color("darkLighter"))
            }
            .padding(.horizontal, 16)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    AvailableFreeCell(image: "storeItem1",
                                      title: "План питания \nна неделю")
                    AvailableFreeCell(image: "storeItem2",
                                      title: "Одна индивид. \nтренировка")
                    AvailableFreeCell(image: "storeItem3",
                                      title: "Одна групп. \nтренировка")
                }
                .padding(.horizontal, 16)
            }
        }
    }
}

struct AvailableFreeCell: View {
    @State var image: String
    @State var title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 128, height: 68)
            }
            
            Text(title)
                .font(Font.gilroySemibold(size: 15))
                .padding(.horizontal, 8)
                .frame(alignment: .leading)
        }
        .frame(width: 128, height: 120)
        .background(Color("darkVeryLight"))
        .cornerRadius(8)
    }
}

struct AvailableFreeCell_Previews: PreviewProvider {
    static var previews: some View {
        AvailableFreeCell(image: "storeItem1",
                          title: "Одна групп. \nтренировка")
    }
}
