//
//  KatalogView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 13/12/23.
//

import SwiftUI

struct KatalogView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var asset: [Item]
    
    var body: some View {
        ScrollView(.vertical, content: {
            LazyVGrid(columns: columns) {
                ForEach(asset) { asset in
                    NavigationLink {
                        ItemDetailView()
                    } label: {
                        AssetView(title: asset.title, description: asset.description, lokasi: asset.location, area: asset.area, luas: asset.luas)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
        })
    }
}

#Preview {
    KatalogView(asset: Assets)
}
