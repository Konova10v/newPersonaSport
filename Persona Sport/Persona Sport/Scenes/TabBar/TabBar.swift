//
//  TabBar.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 23.06.2021.
//

import SwiftUI

struct TabBar: View {
    @EnvironmentObject var showFullScreen: ShowFullScreen
    
    @State private var selection = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottomLeading) {
                NavigationView {
                    TabView(selection: $selection) {
                        NavigationView {
                            MainScreenView(workoutRecording: true,
                                           statusCard: "Карта активна",
                                           statustics: true)
                        }
                        .tabItem {
                            selection == 0 ? Image("selectMainScreenTB") : Image("mainScreenTB")
                            
                            Text("Главная")
                                .font(Font.gilroyMedium(size: 10))
                                .foregroundColor(selection == 0 ? .black : Color("darkLighter"))
                        }
                        .tag(0)
                        .navigationBarHidden(true)
                        
                        NavigationView {
                            SelectOurClubs()
                            
        //                    MainScreenView(workoutRecording: false,
        //                                   statusCard: "Карта активна",
        //                                   statustics: false)
                        }
                        .tabItem {
                            selection == 1 ? Image("selectShop") : Image("shop")
                            
                            Text("Магазин")
                                .font(Font.gilroyMedium(size: 10))
                                .foregroundColor(selection == 1 ? .black : Color("darkLighter"))
                        }
                        .tag(1)
                        .navigationBarHidden(true)
                        
                        NavigationView {
                            MainScreenView(workoutRecording: true,
                                           statusCard: "Нет карты",
                                           statustics: false)
                        }
                        .tabItem {
                            selection == 2 ? Image("selectCalendar") : Image("calendar")
                            
                            Text("Календарь")
                                .font(Font.gilroyMedium(size: 10))
                                .foregroundColor(selection == 2 ? .black : Color("darkLighter"))
                        }
                        .tag(2)
                        .navigationBarHidden(true)
                        
                        NavigationView {
                            MainScreenView(workoutRecording: true,
                                           statusCard: "Истек срок",
                                           statustics: false)
                        }
                        .tabItem {
                            selection == 3 ? Image("selectMyHealth") : Image("myHealth")
                            
                            Text("Мое здоровье")
                                .font(Font.gilroyMedium(size: 10))
                                .foregroundColor(selection == 3 ? .black : Color("darkLighter"))
                        }
                        .tag(3)
                        .navigationBarHidden(true)
                    }
                    .accentColor(.black)
                    .onAppear() {
                        UITabBar.appearance().barTintColor = .white
                    }
                }
                
                if self.showFullScreen.showDeposit {
                    Deposit()
                }
                
                if self.showFullScreen.showFreezeCard {
                    FreezeTheCard()
                }
                
                if self.showFullScreen.showAvailableWorkouts {
                    AvailableWorkouts()
                }
                
                if self.showFullScreen.showAboutCard {
                    AboutCard()
                }
                
                if self.showFullScreen.showAboutClub {
                    DetailOurClub(mainScreenCard: true)
                }
            }
        }
        .navigationBarHidden(true)
        .addPartialSheet()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
