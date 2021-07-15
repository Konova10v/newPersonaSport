//
//  AttendanceStatistics.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 23.06.2021.
//

import SwiftUI

struct AttendanceStatistics: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    
    @State var statustics: Bool
        
    var body: some View {
        VStack(spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text("Статистика посещений")
                        .font(Font.gilroyBold(size: 21))
                        .padding(.horizontal, 16)
                    
                    Spacer()
                }
                
                Text(statustics ? "Идете хорошо! Продолжайте в том же духе! 👍" : "Еще собираем данные. 🙂")
                    .font(Font.gilroyMedium(size: 17))
                    .foregroundColor(Color("darkLighter"))
                    .padding(.horizontal, 16)
            }
            
            HStack {
                    // Left stack
                    HStack {
                        VStack(spacing: 8) {
                            Text("\(mainViewModel.mainScreenСategories.userStatistic?.userStatisticCurrent ?? 0)")
                                .font(Font.gilroyMedium(size: 27))
                                .foregroundColor(Color.white)
                            
                            Text("этот месяц")
                                .font(Font.gilroySemibold(size: 13))
                                .foregroundColor(Color("light60%"))
                        }
                        .padding(.leading, 16)
                        Spacer()
                    }

                    HStack {
                        Spacer()
                        VStack(spacing: 8) {
                            Text(statustics ? "\(mainViewModel.mainScreenСategories.userStatistic?.userStatisticBefore ?? 0)" : "-")
                                .font(Font.gilroyMedium(size: 27))
                                .foregroundColor(Color.white)
                            
                            Text("прошлый")
                                .font(Font.gilroySemibold(size: 13))
                                .foregroundColor(Color("light60%"))
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        .padding(.trailing, 5)
                        Spacer()
                    }

                    // Right stack
                    HStack {
                        Spacer()
                        VStack(spacing: 8) {
                            Text("\(mainViewModel.mainScreenСategories.userStatistic?.userStatisticBest ?? 0)")
                                .font(Font.gilroyMedium(size: 27))
                                .foregroundColor(Color.white)
                            
                            Text("лучший")
                                .font(Font.gilroySemibold(size: 13))
                                .foregroundColor(Color("light60%"))
                        }
                        .padding(.trailing, 16)
                    }
                }
            .frame(width: UIScreen.screenWidth - 32)
            .padding(.vertical, 24)
            .background(Color("secondary2"))
            .cornerRadius(8)
//
//
//            HStack {
//                VStack(spacing: 8) {
//                    Text("\(mainViewModel.mainScreenСategories.userStatistic?.userStatisticCurrent ?? 0)")
//                        .font(Font.gilroyMedium(size: 27))
//                        .foregroundColor(Color.white)
//                        .padding(.horizontal, 16)
//
//                    Text("этот месяц")
//                        .font(Font.gilroySemibold(size: 13))
//                        .foregroundColor(Color("light60%"))
//                        .padding(.horizontal, 16)
//                }
//
//                Spacer()
//
//                VStack(spacing: 8) {
//                    Text(statustics ? "\(mainViewModel.mainScreenСategories.userStatistic?.userStatisticBefore ?? 0)" : "-")
//                        .font(Font.gilroyMedium(size: 27))
//                        .foregroundColor(Color.white)
//                        .padding(.horizontal, 16)
//
//                    Text("прошлый")
//                        .font(Font.gilroySemibold(size: 13))
//                        .foregroundColor(Color("light60%"))
//                        .padding(.horizontal, 16)
//                }
//
//                Spacer()
//
//                VStack(spacing: 8) {
//                    Text("\(mainViewModel.mainScreenСategories.userStatistic?.userStatisticBest ?? 0)")
//                        .font(Font.gilroyMedium(size: 27))
//                        .foregroundColor(Color.white)
//                        .padding(.horizontal, 16)
//
//                    Text("лучший")
//                        .font(Font.gilroySemibold(size: 13))
//                        .foregroundColor(Color("light60%"))
//                        .padding(.horizontal, 16)
//                }
//            }
//            .frame(width: UIScreen.screenWidth - 32)
//            .padding(.vertical, 24)
//            .background(Color("secondary2"))
//            .cornerRadius(8)
        }
    }
}

struct AttendanceStatistics_Previews: PreviewProvider {
    static var previews: some View {
        AttendanceStatistics(statustics: true)
    }
}
