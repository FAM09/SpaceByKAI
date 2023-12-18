//
//  iconButton.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 13/12/23.
//

import SwiftUI

struct iconButton: View {
    @StateObject private var searchFilterSortController = SearchFilterSortController()
    
    var body: some View {
        Button(action: {
            withAnimation {
                print("tekan")
                searchFilterSortController.hideAllViewsExcept(searchShow: true)
            }
        }) {
            Image(systemName: "magnifyingglass")
                .frame(width: 18, height: 18)
        }
    }
}

#Preview {
    iconButton()
}
