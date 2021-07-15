//
//  MyWorkouts.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 23.06.2021.
//

import SwiftUI

struct MyWorkouts: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    
    @State var workoutRecording: Bool
    @State var myCard: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if !myCard {
                HStack {
                    Text("Мои тренировки")
                        .font(Font.gilroyBold(size: 21))
                        .padding(.horizontal, 16)
                    
                    Spacer()
                }
            }
            
            if workoutRecording {
                VStack(spacing: 0) {
                    ForEach(mainViewModel.mainScreenСategories.userTrainingsCalendar?.body ?? [],  id: \.title) { workouts in
                        MyWorkoutsCell(workout: workouts)
                    }
                }
            } else {
                Text("Вы не записаны на групповые или индивидуальные тренировки")
                    .font(Font.gilroyMedium(size: 17))
                    .padding(.horizontal, 16)
                    .foregroundColor(Color("darkLighter"))
            }
        }
    }
}

//struct MyWorkouts_Previews: PreviewProvider {
//    static var previews: some View {
//        MyWorkouts(workoutRecording: true)
//    }
//}


struct MyWorkoutsCell: View {
    @State var workout: TrainingsBody
    
    var body: some View {
        VStack(spacing: 0) {
            Divider()
                .padding(.leading, 76)
            
            HStack {
                HStack(spacing: 16) {
                    Image("store_item")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .cornerRadius(8)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text(workout.title ?? "")
                            .font(Font.gilroySemibold(size: 17))
                            .kerning(-0.24)
                        
                        Text(workout.type ?? "")
                            .font(Font.gilroyMedium(size: 15))
                            .foregroundColor(Color("darkLighter"))
                    }
                }
                
                Spacer()
                
                HStack {
                    VStack(alignment: .trailing, spacing: 4) {
                        HStack(spacing: 4) {
                            Text("\(workout.remain ?? 0)")
                                .font(Font.gilroyMedium(size: 17))
                            
                            Text("ост.")
                                .font(Font.gilroyMedium(size: 17))
                        }
                        
                        Text(workout.next ?? "")
                            .font(Font.gilroyMedium(size: 15))
                            .foregroundColor(workout.next ?? "" == "Не указано" ? Color("darkLighter") : Color("secondary1"))
                        
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
        }
    }
}

//struct MyWorkoutsCell_Previews: PreviewProvider {
//    static var previews: some View {
//        MyWorkoutsCell()
//    }
//}
