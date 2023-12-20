//
//  Sort.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 13/12/23.
//

import SwiftUI

struct Sort: View {
    @Binding var isTrue: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Sort by")
                    .font(.subheadline)
                    .fontWeight(.bold)
                
                Spacer()
                
                Image(systemName: "xmark")
                    .onTapGesture {
                        isTrue = false
                    }
            }
            
            TextField("Lokasi", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .font(.caption2)
            
            HStack {
                Spacer()
                
                Button("Sort") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .buttonStyle(.borderedProminent)
            }
            .frame(width: 250.0)
        }
        .padding(12)
        .frame(width: 274, alignment: .center)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color(red: 0.12, green: 0.12, blue: 0.12).opacity(0.2), radius: 6, x: 0, y: 0)
    }
}
