//
//  Promotions.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 23.06.2021.
//

import SwiftUI

struct Promotions: View {
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text("Акции")
                    .font(Font.gilroyBold(size: 21))
                
                Spacer()
            }
            .padding(.horizontal, 16)
            
            TabView() {
                Image("promotions")
                    .resizable()
                    .frame(width: UIScreen.screenWidth - 32,
                           height: 382,
                           alignment: .center)
                
                Image("promotions")
                    .resizable()
                    .frame(width: UIScreen.screenWidth - 32,
                           height: 382,
                           alignment: .center)
                
                Image("promotions")
                    .resizable()
                    .frame(width: UIScreen.screenWidth - 32,
                           height: 382,
                           alignment: .center)
                
                Image("promotions")
                    .resizable()
                    .frame(width: UIScreen.screenWidth - 32,
                           height: 382,
                           alignment: .center)
                
                Image("promotions")
                    .resizable()
                    .frame(width: UIScreen.screenWidth - 32,
                           height: 382,
                           alignment: .center)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(width: UIScreen.screenWidth - 32,
                   height: 375,
                   alignment: .center)
            .cornerRadius(8)
        }
    }
}

struct Promotions_Previews: PreviewProvider {
    static var previews: some View {
        Promotions()
    }
}
