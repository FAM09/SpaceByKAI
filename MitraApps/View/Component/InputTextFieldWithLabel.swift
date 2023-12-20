//
//  TextFieldWithLabel.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 23/12/23.
//

import SwiftUI

struct TextFieldWithLabel: View {
    let label: String
    let placeholder: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(
                    Font.custom("Inter", size: 14)
                        .weight(.bold)
                )
                .multilineTextAlignment(.leading)
            
            TextField(placeholder, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color(red: 0.71, green: 0.71, blue: 0.71), lineWidth: 1)
                )
        }
    }
}

#Preview {
    TextFieldWithLabel(label: "Username", placeholder: "username")
}
