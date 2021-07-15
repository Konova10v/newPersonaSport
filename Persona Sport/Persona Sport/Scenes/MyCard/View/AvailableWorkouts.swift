//
//  AvailableWorkouts.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 13.07.2021.
//

import SwiftUI

struct AvailableWorkouts: View {
    // MARK: - Параметры
    @EnvironmentObject var showFullScreen: ShowFullScreen
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    // MARK: - Кнопка назад
    var backButton: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            showFullScreen.showAvailableWorkouts = false
        }) {
            HStack {
                Image("backButton")
                    .foregroundColor(.black)
            }
        }
    }
    
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea(.all)
            
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
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Доступные тренировки")
                        .font(Font.gilroySemibold(size: 27))
                        .lineSpacing(3.2)
                        .padding(.horizontal, 16)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        MyWorkouts(workoutRecording: true, myCard: true)
                    }
                }
                Spacer()
            }
        }
    }
}

struct AvailableWorkouts_Previews: PreviewProvider {
    static var previews: some View {
        AvailableWorkouts()
    }
}
