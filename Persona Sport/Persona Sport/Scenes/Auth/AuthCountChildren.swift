//
//  AuthCountChildren.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 26.06.2021.
//

import SwiftUI

struct Children: Identifiable {
    var id = UUID()
    var name: String
    var isActive: Bool
}

// MARK: - Количество детей
struct AuthCountChildren: View {
    // MARK: - Параметры
    @State var children: [Children] = [Children(name: "Ни одного", isActive: false),
                                       Children(name: "Один", isActive: false),
                                       Children(name: "Двое", isActive: false),
                                       Children(name: "Трое", isActive: false),
                                       Children(name: "Четверо", isActive: false),
                                       Children(name: "Больше 4-х", isActive: false)]
    
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
                    
                    Button(action: {
                        
                    }) {
                        Text("Пропустить")
                            .font(Font.gilroyMedium(size: 17))
                            .foregroundColor(Color("darkLighter"))
                    }
                }
                .padding(.horizontal, 23)
            }
            .frame(height: 44)
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Сколько у вас детей?")
                    .font(Font.gilroySemibold(size: 27))
                    .padding(.horizontal, 16)
                
                VStack(alignment: .leading, spacing: 0) {
                    ForEach(children.indices, id: \.self) { idx in
                        HStack(spacing: 12) {
                            Image(children[idx].isActive ? "checkActive" : "checkNotActive")
                                
                            Text(children[idx].name)
                                .font(Font.gilroyMedium(size: 21))
                                
                            Spacer()
                        }
                        .padding(.vertical, 24)
                        .padding(.horizontal, 16)
                        .onTapGesture {
                            for item in children.indices {
                                if children[item].isActive {
                                    children[item].isActive.toggle()
                                }
                            }
                            children[idx].isActive.toggle()
                        }
                        
                        Divider()
                            .padding(.leading, 48)
                    }
                }
            }
            
            Spacer()
            
            Button(action: {
                
            }) {
                NavigationLink(destination: AuthTrainingGoal()) {
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

struct AuthCountChildren_Previews: PreviewProvider {
    static var previews: some View {
        AuthCountChildren()
    }
}
