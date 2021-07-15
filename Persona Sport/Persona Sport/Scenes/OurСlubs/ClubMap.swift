//
//  ClubMap.swift
//  Persona Sport
//
//  Created by Кирилл Коновалов on 12.07.2021.
//

import SwiftUI
import MapKit

struct ClubMap: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 54.725093, longitude: 55.931867), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Map(coordinateRegion: $region)
                .ignoresSafeArea(.all)
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image("backButton")
                        .foregroundColor(.black)
                }
            }
            .frame(width: 44, height: 44, alignment: .center)
            .background(Color.white)
            .cornerRadius(8)
            .padding(.leading, 16)
        }
        .navigationBarHidden(true)
    }
}

struct ClubMap_Previews: PreviewProvider {
    static var previews: some View {
        ClubMap()
    }
}
