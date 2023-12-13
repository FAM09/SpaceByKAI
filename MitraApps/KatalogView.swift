//
//  KatalogView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 13/12/23.
//

import SwiftUI

struct KatalogView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.vertical, content: {
            LazyVGrid(columns: columns) {
                ForEach(Assets) { asset in
                    Katalog(title: asset.title, description: asset.description, lokasi: asset.lokasi, area: asset.area, luas: asset.luas)
                }
            }
        })
        .padding(0)
        .frame(width: 355.0, height: 580.0)
    }
}

#Preview {
    KatalogView()
}
