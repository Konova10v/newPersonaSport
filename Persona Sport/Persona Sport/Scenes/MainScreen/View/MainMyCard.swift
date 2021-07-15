//
//  MyCard.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 23.06.2021.
//

import SwiftUI

struct MainMyCard: View {
    @EnvironmentObject var mainViewModel: MainViewModel
    @EnvironmentObject var myCardVM: MyCardViewModel
    
    @State var statusCard: String
    @State var mainScreen: Bool
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                Text("Моя карта")
                    .font(mainScreen ? Font.gilroyBold(size: 21) : Font.gilroySemibold(size: 27))
                
                Spacer()
            }
            .padding(.horizontal, 16)
            
            switch statusCard {
            case "Нет карты":
                InactiveCard(statusCard: statusCard)
            case "Истек срок":
                InactiveCard(statusCard: statusCard)
            default:
                VStack(spacing: 72) {
                    HStack {
                        HStack(spacing: 8) {
                            HStack(spacing: 5.75) {
                                Image("subtract")
                                
                                Text("\(mainViewModel.mainScreenСategories.userInfo?.userClubs.body?.first?.userBonus ?? 126)")
                                    .font(Font.gilroySemibold(size: 15))
                            }
                            .padding(8)
                            .background(Color.white)
                            .cornerRadius(8)
                            
                            HStack(spacing: 5.75) {
                                Image("saleMyCard")
                                
                                Text("\(mainViewModel.mainScreenСategories.userInfo?.userClubs.body?.first?.userDiscount ?? 10)%")
                                    .font(Font.gilroySemibold(size: 15))
                            }
                            .padding(8)
                            .background(Color.white)
                            .cornerRadius(8)
                        }
                        
                        Spacer()
                        
                        Image("clubLogo")
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 16)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(alignment: .bottom) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Депозит")
                                    .font(Font.gilroySemibold(size: 13))
                                    .foregroundColor(Color("light60%"))
                                
                                HStack(spacing: 14) {
                                    Text("\(mainViewModel.mainScreenСategories.userInfo?.userClubs.body?.first?.userBalance ?? 160460)")
                                        .font(Font.gilroyMedium(size: 27))
                                        .foregroundColor(.white)
                                        .padding(.bottom, 16)
                                    
                                    Text("₽")
                                        .font(Font.gilroyMedium(size: 27))
                                        .foregroundColor(.white)
                                        .padding(.bottom, 16)
                                }
                            }
                            
                            Spacer()
                            
                            VStack(spacing: 8) {
                                if myCardVM.freeze {
                                    HStack(alignment: .center, spacing: 7.5) {
                                        Image("snowflake")
                                        
                                        HStack(spacing: 4) {
                                            Text("24")
                                                .font(Font.gilroySemibold(size: 13))
                                                .foregroundColor(.white)
                                            
                                            Text("дней")
                                                .font(Font.gilroySemibold(size: 13))
                                                .foregroundColor(.white)
                                        }
                                    }
                                }
                                
                                HStack(spacing: 2) {
                                    Text("до:")
                                        .font(Font.gilroySemibold(size: 13))
                                        .foregroundColor(Color("light60%"))
                                        .padding(.bottom, 16)
                                    
                                    Text(mainViewModel.mainScreenСategories.userInfo?.userClubs.body?.first?.userMemberExpire ?? "")
                                        .font(Font.gilroySemibold(size: 13))
                                        .foregroundColor(.white)
                                        .padding(.bottom, 16)
                                }
                            }
                        }
                    }
                    .padding(.horizontal, 16)
                }
                .frame(width: UIScreen.screenWidth - 32, height: 192)
                .background(Color.black)
                .cornerRadius(8)
            }
        }
    }
}

struct MainMyCard_Previews: PreviewProvider {
    static var previews: some View {
        MainMyCard(statusCard: "Карта активна", mainScreen: true)
    }
}
