//
//  HomeView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 20/12/23.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var searchFilterSortController = SearchFilterSortController()
    @ObservedObject var items = ItemViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    HeaderView(hideLoginButton: true)
                    
                    KatalogView(asset: items.item)
                        .padding(.top, -8)
                    
                    Spacer()
                }
                .padding(3.0)
                .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                .onTapGesture {
                    self.searchFilterSortController.hideAllViews()
                }
                
                SearchFilterSortView()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .statusBar(hidden: true)
        .onAppear{
            self.items.fetchData()
        }
    }
}

#Preview {
    HomeView()
}
