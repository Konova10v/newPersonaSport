//
//  DetailOurClub.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 12.07.2021.
//

import SwiftUI

struct DetailOurClub: View {
    @State var mainScreenCard: Bool
    
    @EnvironmentObject var showFullScreen: ShowFullScreen
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                    .ignoresSafeArea(.all)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 16) {
                        ZStack(alignment: .topLeading) {
                            TabView() {
                                Image("detailOurClub")
                                    .resizable()
                                    .frame(width: UIScreen.screenWidth,
                                           height: 414,
                                           alignment: .center)
                                
                                Image("detailOurClub")
                                    .resizable()
                                    .frame(width: UIScreen.screenWidth,
                                           height: 414,
                                           alignment: .center)
                                
                                Image("detailOurClub")
                                    .resizable()
                                    .frame(width: UIScreen.screenWidth,
                                           height: 414,
                                           alignment: .center)
                                
                                Image("detailOurClub")
                                    .resizable()
                                    .frame(width: UIScreen.screenWidth,
                                           height: 414,
                                           alignment: .center)
                                
                                Image("detailOurClub")
                                    .resizable()
                                    .frame(width: UIScreen.screenWidth,
                                           height: 414,
                                           alignment: .center)
                                
                                Image("detailOurClub")
                                    .resizable()
                                    .frame(width: UIScreen.screenWidth,
                                           height: 414,
                                           alignment: .center)
                            }
                            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                            .frame(width: UIScreen.screenWidth,
                                   height: 414,
                                   alignment: .center)
                            
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                                showFullScreen.showAboutClub = false
                            }) {
                                HStack {
                                    Image("backButton")
                                        .foregroundColor(.black)
                                }
                            }
                            .frame(width: 44, height: 44, alignment: .center)
                            .background(Color.white)
                            .cornerRadius(8)
                            .padding(.top, 44)
                            .padding(.leading, 16)
                        }
                        
                        VStack(alignment: .leading, spacing: 16) {
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Pushkin")
                                    .font(Font.gilroySemibold(size: 27))
                                
                                Text("Фитнес-клуб «PUSHKIN» - это единство благородной классики и современного представления о функциональном подходе. О...")
                                    .font(Font.gilroyMedium(size: 17))
                                    .lineSpacing(2.4)
                                    .foregroundColor(Color("darkStory"))
                                
                                Text("Читать полностью")
                                    .font(Font.gilroyMedium(size: 17))
                                    .foregroundColor(Color("darkLighter"))
                            }
                            .padding(.horizontal, 16)
                            
                            VStack(spacing: 20) {
                                VStack(spacing: 0) {
                                    Divider()
                                        .padding(.leading, 16)
                                    
                                    NavigationLink(destination: ClubOpportunities()) {
                                        HStack {
                                            Text("Возможности клуба")
                                                .font(Font.gilroyMedium(size: 21))
                                                .foregroundColor(.black)
                                            
                                            Spacer()
                                            
                                            Image("nextView")
                                        }
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 24)
                                    }
                                    
                                    Divider()
                                        .padding(.leading, 16)
                                    
                                    NavigationLink(destination: ClubMap()) {
                                        HStack {
                                            HStack(spacing: 11.75) {
                                                Image("mapMarker")
                                                
                                                Text("ул. Пушкина 45/2")
                                                    .font(Font.gilroyMedium(size: 21))
                                                    .foregroundColor(Color("secondary1"))
                                            }
                                            
                                            Spacer()
                                            
                                            Image("nextView")
                                        }
                                        .padding(.horizontal, 16)
                                        .padding(.vertical, 24)
                                    }
                                    
                                    Divider()
                                        .padding(.leading, 16)
                                    
                                    HStack {
                                        Text("Официальный сайт")
                                            .font(Font.gilroyMedium(size: 21))
                                        
                                        Spacer()
                                        
                                        Image("nextView")
                                    }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 24)
                                    
                                    Divider()
                                        .padding(.leading, 16)
                                    
                                    HStack {
                                        Text("Instagram")
                                            .font(Font.gilroyMedium(size: 21))
                                        
                                        Spacer()
                                        
                                        Image("nextView")
                                    }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 24)
                                    
                                    if !mainScreenCard {
                                        Divider()
                                            .padding(.leading, 16)
                                    }
                                }
                            }
                        }
                    }
                    
                    if !mainScreenCard {
                        Button(action: {
                            
                        }) {
                            Text("Выбрать этот клуб")
                                .font(Font.gilroySemibold(size: 17))
                                .frame(width: UIScreen.screenWidth - 32, height: 56)
                                .foregroundColor(.white)
                                .background(Color.black)
                                .cornerRadius(8)
                        }
                        .padding(.top, 16)
                    }
                }
            }
            .padding(.top, 1)
            .navigationBarHidden(true)
        }
        .navigationBarHidden(true)
    }
}

//struct DetailOurClub_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailOurClub()
//    }
//}
