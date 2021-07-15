//
//  SelectCityClubs.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 12.07.2021.
//

import SwiftUI

struct SelectCityClubs: View {
    // MARK: - Параметры
    @State var city: [Children] = [Children(name: "Москва", isActive: false),
                                   Children(name: "Уфа", isActive: true),
                                   Children(name: "Самара", isActive: false),
                                   Children(name: "Владивосток", isActive: false),
                                   Children(name: "Челябинск", isActive: false),
                                   Children(name: "Санкт-Петербург", isActive: false)]
    
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
        VStack(spacing: 34) {
            ZStack {
                Color.white
                    .ignoresSafeArea()
                HStack {
                    backButton
                    
                    Spacer()
                    
                    Text("Выберите город")
                        .font(Font.gilroyMedium(size: 17))
                        .padding(.trailing, 15)
                    
                    Spacer()
                }
                .padding(.horizontal, 23)
            }
            .frame(height: 44)
            
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(city.indices, id: \.self) { idx in
                        HStack(spacing: 12) {
                            Image(city[idx].isActive ? "checkActive" : "checkNotActive")
                                
                            Text(city[idx].name)
                                .font(Font.gilroyMedium(size: 21))
                                
                            Spacer()
                        }
                        .padding(.vertical, 24)
                        .padding(.horizontal, 16)
                        .onTapGesture {
                            for item in city.indices {
                                if city[item].isActive {
                                    city[item].isActive.toggle()
                                }
                            }
                            city[idx].isActive.toggle()
                        }
                        
                        Divider()
                            .padding(.leading, 48)
                    }
                }
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct SelectCityClubs_Previews: PreviewProvider {
    static var previews: some View {
        SelectCityClubs()
    }
}
