//
//  ClubOpportunities.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 12.07.2021.
//

import SwiftUI

struct ClubOpportunities: View {
    // MARK: - Параметры    
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
            
            VStack(alignment: .leading, spacing: 28) {
                Text("Возможности клуба")
                    .font(Font.gilroySemibold(size: 27))
                
                Text("Услуги фитнес-клуба: \n— 4 этажа фитнеса площадью 3000 кв.м. \n— Тренажерный зал с оборудованием CYBEX \n— Бассейн 24 м \n— Кардиолиния \n— Зал сайкла \n— Аэробный зал \n— Зал групповых программ \n— Зал единоборств \n— Зал йоги \n— Персональные тренировки \n— Специальные программы \n— Фитнес-тестирование \n— Фитнес-медицина \n— Финская сауна \n— Хамам \n— Соляная шахта \n— Вертикальный турбо-солярий \n— Русская баня \n— Массаж \n— Детский клуб \n— Мужской барбершоп Chapaev \n— Фитнес-бар \n— Стартовая тренировка \n— Заморозка клубной карты \n— Право переоформления клубной карты \n— Гостевой визит \n— Инструктаж по групповым программам \n— Зона Wi-Fi")
                    .font(Font.gilroyMedium(size: 17))
                    .lineSpacing(2.4)
                    .foregroundColor(Color("darkStory"))
            }
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct ClubOpportunities_Previews: PreviewProvider {
    static var previews: some View {
        ClubOpportunities()
    }
}
