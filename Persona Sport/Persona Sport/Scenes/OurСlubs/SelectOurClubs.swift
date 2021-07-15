//
//  SelectOurClubs.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 12.07.2021.
//

import SwiftUI

struct SelectOurClubs: View {
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Закрыть")
                        .font(Font.gilroyMedium(size: 17))
                        .foregroundColor(Color("darkLighter"))
                        .padding(.vertical, 10)
                }
            }
            .padding(.horizontal, 16)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 41.5) {
                    Text("Какой из наших клубов вы бы хотели посещать?")
                        .font(Font.gilroySemibold(size: 27))
                        .lineSpacing(3.2)
                        .frame(width: UIScreen.screenWidth - 32, alignment: .leading)
                
                    VStack(spacing: 24) {
                        NavigationLink(destination: SelectCityClubs()) {
                            HStack(spacing: 11.75) {
                                Image("mapMarker")
                            
                                Text("г. Уфа")
                                    .font(Font.gilroyMedium(size: 21))
                            
                                Spacer()
                            
                                Image("nextView")
                            }
                            .padding(.leading, 16)
                            .padding(.trailing, 23.5)
                        }
                    
                        VStack(spacing: 16) {
                            OurClubCell(image: "personaSport",
                                        address: "ул. Карла Маркса 46",
                                        name: "Persona Fitness")
                            
                            OurClubCell(image: "pushkin",
                                        address: "ул. Пушкина 45/2",
                                        name: "Pushkin")
                            
                            OurClubCell(image: "worldClass",
                                        address: "ул. Революционная 2",
                                        name: "World Class")
                        }
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct SelectOurClubs_Previews: PreviewProvider {
    static var previews: some View {
        SelectOurClubs()
    }
}


struct OurClubCell: View {
    @State var image: String
    @State var address: String
    @State var name: String
    
    var body: some View {
        NavigationLink(destination: DetailOurClub(mainScreenCard: false)) {
            ZStack {
                Image(image)
                    .resizable()
                    .frame(width: UIScreen.screenWidth - 32, height: 192, alignment: .center)
                Image("imageShadow")
                    .resizable()
                    .frame(width: UIScreen.screenWidth - 32, height: 192, alignment: .center)
                
                HStack {
                    VStack(alignment: .leading, spacing: 112) {
                        HStack(spacing: 6.5) {
                            Image("mapMarker")
                                .resizable()
                                .renderingMode(.template)
                                .foregroundColor(.black)
                                .frame(width: 11, height: 14)
                            
                            Text(address)
                                .font(Font.gilroySemibold(size: 15))
                        }
                        .padding(8)
                        .background(Color.white)
                        .cornerRadius(8)
                        
                        Text(name)
                            .font(Font.gilroyBold(size: 21))
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                .padding(.leading, 32)
            }
        }
    }
}
