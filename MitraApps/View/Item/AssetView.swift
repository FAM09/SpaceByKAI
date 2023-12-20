//
//  Katalog.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 12/12/23.
//

import SwiftUI

struct AssetView: View {
    let title: String
    let description: String
    let lokasi: String
    let area: String
    let luas: String
    
    var body: some View {
        VStack(alignment: .center) {
            Image("rumah")
                .resizable()
                .frame(height: 158)
                .scaledToFit()
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.caption)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 0)
                    .padding(.trailing, 15)
                
                Text(description)
                    .font(.caption)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding(.leading, 0)
                    .padding(.trailing, 15)
                
                Spacer()
                
                HStack(alignment: .bottom) {
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .scaledToFit()
                    Text(lokasi + ", " + area)
                        .font(Font.custom("Inter", size: 10))
                        .foregroundColor(Color(red: 0.43, green: 0.43, blue: 0.43))
                }
                .padding(.leading, 0)
                .padding(.trailing, 15)
                .frame(height: 10.0)
                
                HStack(alignment: .bottom) {
                    Image(systemName: "map")
                        .resizable()
                        .scaledToFit()
                    Text("Luas Tanah " + luas + " m²")
                        .font(Font.custom("Inter", size: 10))
                        .foregroundColor(Color(red: 0.43, green: 0.43, blue: 0.43))
                }
                .padding(.leading, 0)
                .padding(.trailing, 15)
                .frame(height: 10.0)
            }
            .frame(width: 150.0)
            
            Spacer()
        }
        .background(.white)
        .frame(width: 180, height: 270)
        .cornerRadius(4)
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .inset(by: 0.5)
                .stroke(Color(red: 0.86, green: 0.88, blue: 0.89), lineWidth: 1)
            
        )
    }
}

#Preview {
    AssetView(title: "RPR JL. JAWA NO.40A", description: "Rumah dinas ini adalah rumah kosong", lokasi: "Dago", area: "Bandung", luas: "1000")
}
