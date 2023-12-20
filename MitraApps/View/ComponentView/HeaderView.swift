//
//  HeaderView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 13/12/23.
//

import SwiftUI

struct HeaderView: View {
    @State private var isTrue = false
    var hideLoginButton: Bool
    
    var body: some View {
        HStack(alignment: .center, content: {
            Image("LogoSpace")
                .resizable()
                .scaledToFit()
                .padding(0)
                .padding(.leading, -20)
            
            Spacer()
            
            if hideLoginButton {
                Button("Login") {
                    isTrue.toggle()
                }
                .padding(.trailing, 5.0)
                .buttonStyle(.borderedProminent)
                .sheet(isPresented: $isTrue, content: {
                    LoginView()
                })
            }
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
    HeaderView(hideLoginButton: false)
}
