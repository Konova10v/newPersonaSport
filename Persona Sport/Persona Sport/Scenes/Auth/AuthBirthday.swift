//
//  AuthBirthday.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 26.06.2021.
//

import SwiftUI
import Combine

// MARK: - День рождения
struct AuthBirthday: View {
    // MARK: - Параметры
    @State var birthday: String = ""
    
    @State var showDatePicker: Bool = false
    @State var savedDate: Date? = nil
    
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
        VStack(alignment: .leading, spacing: 30) {
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
            
            VStack(alignment: .leading, spacing: 32) {
                Text("Пожалуйста, введите дату рождения")
                    .font(Font.gilroySemibold(size: 27))
                    .lineSpacing(3.2)
                
                VStack(spacing: 37) {
                    ZStack {
                        Button(action: {
                            showDatePicker.toggle()
                        }, label: {
                            Text(savedDate?.getFormattedDate(format: "dd/MM/yyyy") ?? "__/__/____")
                                .font(Font.gilroySemibold(size: 32))
                                .foregroundColor(savedDate == nil ? Color("inputPlaceHolder") : .black)
                                .frame(width: UIScreen.screenWidth - 32, alignment: .leading)
                        })
                        
                        if showDatePicker {
                            DatePickerWithButtons(showDatePicker: $showDatePicker, savedDate: $savedDate, selectedDate: savedDate ?? Date())
                                .animation(.linear)
                                .transition(.opacity)
                        }
                    }
                    
//                    TextField("__/__/____", text: $birthday)
//                        .font(Font.gilroySemibold(size: 32))
//                        .keyboardType(.phonePad)
//                        .onChange(of: birthday) { value in
//                            if value.count == 2 {
//                                birthday += "/"
//                            } else if value.count == 5 {
//                                birthday += "/"
//                            }
//                        }
//                        .onReceive(Just(birthday)) { _ in limitText(10) }
                    
                    if !showDatePicker {
                        Button(action: {
                            
                        }) {
                            NavigationLink(destination: AuthGender()) {
                                Text("Подтвердить")
                                    .font(Font.gilroySemibold(size: 17))
                                    .frame(width: UIScreen.screenWidth - 32, height: 56)
                                    .foregroundColor(.white)
                                    .background(birthday.isEmpty ? Color.black.opacity(0.3) : Color.black)
                                    .cornerRadius(8)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
    
    // MARK: - Лимит символов в тексте
    func limitText(_ upper: Int) {
        if birthday.count > upper {
            birthday = String(birthday.prefix(upper))
        }
    }
}

//struct AuthBirthday_Previews: PreviewProvider {
//    static var previews: some View {
//        AuthBirthday()
//    }
//}

struct DatePickerWithButtons: View {
    @Binding var showDatePicker: Bool
    @Binding var savedDate: Date?
    @State var selectedDate: Date = Date()
    
    var dateClosedRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -100, to: Date())!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: Date())!
        return min...max
    }
    
    var body: some View {
        ZStack {
            VStack {
                DatePicker("", selection: $selectedDate, in: dateClosedRange, displayedComponents: [.date])
                    .datePickerStyle(WheelDatePickerStyle())
                    .environment(\.locale, Locale.init(identifier: "ru_RU"))
                
                Divider()
                
                Button(action: {
                    savedDate = selectedDate
                    showDatePicker = false
                }, label: {
                    Text("Сохранить".uppercased())
                        .font(Font.gilroySemibold(size: 17))
                        .foregroundColor(.black)
                        .padding(.vertical, 5)
                })
                .padding(.horizontal, 16)
            }
            .background(
                Color.white
            )
        }
    }
}
