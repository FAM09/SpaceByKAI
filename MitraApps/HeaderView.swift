//
//  HeaderView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 13/12/23.
//

import SwiftUI

struct HeaderView: View {
    @StateObject private var objectModel = ObjectModel()
    
    var body: some View {
        HStack(alignment: .center, content: {
            Image("LogoSpace")
                .resizable()
                .scaledToFit()
                .padding(.top, -15)
                .padding(.leading, -25)
            
            Spacer()
            
            Button("Login") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding(.trailing, 5.0)
            .buttonStyle(.borderedProminent)
        })
        .frame(height: 70.0)
        .background(.white)
        .overlay(
            Rectangle()
                .inset(by: 0.5)
                .stroke(Color(red: 0.87, green: 0.87, blue: 0.88), lineWidth: 1)
        )
    }
}

#Preview {
    HeaderView()
}
