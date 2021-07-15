//
//  ContentView.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 23.06.2021.
//

import SwiftUI

struct MainScreenView: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    
    @State var workoutRecording: Bool
    @State var statusCard: String
    @State var statustics: Bool
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 32) {
                    VStack(spacing: 16) {
                        VStack(spacing: 0) {
                            HStack {
                                HStack(spacing: 10.41) {
                                    Image("headerProfileMainScreen")
                                    
                                    Text("Привет, \(mainViewModel.mainScreenСategories.userInfo?.userName ?? "Oleg")!")
                                        .font(Font.gilroySemibold(size: 17))
                                }
                                
                                Spacer()
                                    
                                HStack(spacing: 27.34) {
                                    Image("headerUnionMainScreen")
                                        
                                    Image("headerBellRingingMainScreen")
                                }
                            }
                            .padding(EdgeInsets(top: 12.25,
                                                leading: 18.4,
                                                bottom: 14,
                                                trailing: 19.34))
                                
                            Divider()
                        }
                        
                        if statusCard != "Нет карты" && statusCard != "Истек срок" {
                            AvailableFree()
                        }
                    }
                    
                    NavigationLink(destination: MyCard()) {
                        MainMyCard(statusCard: statusCard, mainScreen: true)
                    }
                    
                    Promotions()
                    
                    AttendanceStatistics(statustics: statustics)
                    
                    MyWorkouts(workoutRecording: workoutRecording, myCard: false)
                        .padding(.bottom, 32)
                }
                    
                Spacer()
            }
            .padding(.top, 1)
            .navigationBarHidden(true)
        }
        .onAppear {
            UIPageControl.appearance().currentPageIndicatorTintColor = .white
            UIPageControl.appearance().pageIndicatorTintColor = UIColor(named: "light60%")
        }
        .navigationBarHidden(true)
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView(workoutRecording: true,
                       statusCard: "Карта активна",
                       statustics: true)
    }
}
