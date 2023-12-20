//
//  LoginView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 20/12/23.
//

import SwiftUI

struct LoginView: View {
    @State private var isSecurePasswordField: Bool = false
    @State private var passwordText: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Selamat datang")
                .font(
                    Font.custom("Inter", size: 28)
                        .weight(.bold)
                )
                .padding(.bottom, 32)
            
            Text("Selamat datang di aplikasi MitraApps, platform pengembang bisnis anda")
                .font(Font.custom("Inter", size: 14))
                .foregroundColor(Color(red: 0.51, green: 0.51, blue: 0.53))
                .padding(.bottom, 32)
            
            Text("Username")
                .font(
                    Font.custom("Inter", size: 14)
                        .weight(.bold)
                )
            
            TextField("username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 1)
                )
                .padding(.bottom, 32)
            
            Text("Password")
                .font(
                    Font.custom("Inter", size: 14)
                        .weight(.bold)
                )
            
            (isSecurePasswordField ? AnyView(TextField("password", text: $passwordText)) : AnyView(SecureField("password", text: $passwordText)))
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 1)
                )
            
            HStack(alignment: .center) {
                Image(systemName: isSecurePasswordField ? "checkmark.square" : "square")
                    .foregroundColor(.secondary)
                    .onTapGesture {
                        isSecurePasswordField.toggle()
                    }
                
                Text("Tampilkan Password")
                    .font(Font.custom("Inter", size: 12))
                    .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
                
                Spacer()
                
                Text("Lupa password?")
                    .font(
                        Font.custom("Inter", size: 12)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.07, green: 0.2, blue: 0.47))
            }
            .padding(.bottom, 32)
            
            HStack(alignment: .center, spacing: 8) {
                Text("Login")
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.semibold)
                  )
                  .foregroundColor(.white)
            }
            .padding(16)
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 0.07, green: 0.2, blue: 0.47))
            .cornerRadius(6)
            
            Spacer()
            
            VStack(alignment: .center, spacing: 16) {
                Text("Copyright © KAI ")
                  .font(
                    Font.custom("Inter", size: 14)
                      .weight(.bold)
                  )
                  .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
            
        }
        .padding(.all, 32.0)
    }
}

#Preview {
    LoginView()
}


