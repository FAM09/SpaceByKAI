//
//  ContentView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var searchFilterSortController = SearchFilterSortController()
    @ObservedObject var items = ItemViewModel()
    @State private var sliderButtonOffset: CGFloat = 0
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                VStack(alignment: .center, content: {
                    HeaderView()
                    
                    KatalogView(asset: items.item)
                        .padding(.top, -8)
                    
                    Spacer()
                })
                .padding(3.0)
                .border(.black)
                .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                .onTapGesture {
                    self.searchFilterSortController.hideAllViews()
                }
                
                SearchFilterSortView()
            }
            .border(.yellow)
            .padding(.top, -95)
            .padding(.bottom, 0)
        }
        .border(.green)
        .statusBar(hidden: true)
        .onAppear{
            self.items.fetchData()
        }
    }
    
    
}

#Preview {
    ContentView()
}

extension AnyTransition {
    static var moveAndScale: AnyTransition {
        AnyTransition.move(edge: .bottom).combined(with: .scale)
    }
}


