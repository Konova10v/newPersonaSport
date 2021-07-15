//
//  AuthTrainingGoal.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 27.06.2021.
//

import SwiftUI

// MARK: - Цель тренировок
struct AuthTrainingGoal: View {
    // MARK: - Параметры
    @State var trainingGoal: [Children] = [Children(name: "Коррекция фигуры", isActive: false),
                                           Children(name: "Наборы массы", isActive: false),
                                           Children(name: "Сброс веса", isActive: false),
                                           Children(name: "Поддержание формы", isActive: false),
                                           Children(name: "Реабилитация", isActive: false),
                                           Children(name: "Для удовольствия", isActive: false)]
    
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
    
    // MARK: - UI
    var body: some View {
        VStack(spacing: 30) {
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
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Пожалуйста, выберите цель тренировок")
                    .font(Font.gilroySemibold(size: 27))
                    .padding(.horizontal, 16)
                
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(trainingGoal.indices, id: \.self) { idx in
                        HStack(spacing: 12) {
                            Image(trainingGoal[idx].isActive ? "checkActive" : "checkNotActive")
                                
                            Text(trainingGoal[idx].name)
                                .font(Font.gilroyMedium(size: 21))
                                
                            Spacer()
                        }
                        .padding(.vertical, 24)
                        .padding(.horizontal, 16)
                        .onTapGesture {
                            for item in trainingGoal.indices {
                                if trainingGoal[item].isActive {
                                    trainingGoal[item].isActive.toggle()
                                }
                            }
                            trainingGoal[idx].isActive.toggle()
                        }
                        
                        Divider()
                            .padding(.leading, 48)
                    }
                }
            }
            
            Spacer()
            
            Button(action: {
                
            }) {
                NavigationLink(destination: AuthNoClient()) {
                    Text("Подтвердить")
                        .font(Font.gilroySemibold(size: 17))
                        .frame(width: UIScreen.screenWidth - 32, height: 56)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(8)
                }
            }
            .padding(.bottom, 12)
        }
        .navigationBarHidden(true)
    }
}

struct AuthTrainingGoal_Previews: PreviewProvider {
    static var previews: some View {
        AuthTrainingGoal()
    }
}
