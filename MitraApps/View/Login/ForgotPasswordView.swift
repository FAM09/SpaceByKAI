//
//  ForgotPasswordView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 21/12/23.
//

import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Lupa password")
              .font(
                Font.custom("Inter", size: 28)
                  .weight(.bold)
              )
              .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.1))
              .padding(.bottom, 1)
            
            Text("Masukan email yang terdaftar untuk pemulihan password")
              .font(Font.custom("Inter", size: 12))
              .foregroundColor(Color(red: 0.51, green: 0.51, blue: 0.53))
              .padding(.bottom, 32)
            
            Text("Email")
                .font(
                    Font.custom("Inter", size: 14)
                        .weight(.bold)
                )
            
            TextField("email@email.com", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 1)
                )
                .padding(.bottom, 32)
            
            HStack(alignment: .center, spacing: 16) {
                HStack(alignment: .center, spacing: 8) {
                    Text("Batalkan")
                      .font(
                        Font.custom("Inter", size: 16)
                          .weight(.semibold)
                      )
                      .foregroundColor(Color(red: 0.07, green: 0.2, blue: 0.47))
                }
                .padding(16)
                .frame(maxWidth: .infinity, alignment: .center)
                .cornerRadius(6)
                .overlay(
                  RoundedRectangle(cornerRadius: 6)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.07, green: 0.2, blue: 0.47), lineWidth: 1)
                )
                
                HStack(alignment: .center, spacing: 8) {
                    Text("Kirim email")
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
            }
            .padding(0)
            .frame(maxWidth: .infinity, alignment: .leading)
            
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
    ForgotPasswordView()
}
