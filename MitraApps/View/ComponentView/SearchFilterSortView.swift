//
//  SearchFilterSortView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 18/12/23.
//

import SwiftUI

struct SearchFilterSortView: View {
    @StateObject private var searchFilterSortController = SearchFilterSortController()
    @State private var sliderButtonOffset: CGFloat = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            if searchFilterSortController.filterShow {
                Filter(isTrue: $searchFilterSortController.filterShow)
                    .transition(.moveAndScale)
                    .offset(y: sliderButtonOffset)
            }
            if searchFilterSortController.searchShow {
                Search(isTrue: $searchFilterSortController.searchShow)
                    .transition(.moveAndScale)
                    .offset(y: sliderButtonOffset)
            }
            if searchFilterSortController.sortShow {
                Sort(isTrue: $searchFilterSortController.sortShow)
                    .transition(.moveAndScale)
                    .offset(y: sliderButtonOffset)
            }
            
            HStack(alignment: .center, spacing: 16) {
                Button(action: {
                    withAnimation {
                        searchFilterSortController.hideAllViewsExcept(searchShow: true)
                    }
                }) {
                    Image(systemName: "magnifyingglass")
                        .frame(width: 18, height: 18)
                }
                
                Divider()
                    .background(Color.black)
                    .frame(height: 42)
                
                Button(action: {
                    withAnimation {
                        searchFilterSortController.hideAllViewsExcept(sortShow: true)
                    }
                }) {
                    Image(systemName: "arrow.left.arrow.right")
                        .frame(width: 18, height: 18)
                }
                
                Divider()
                    .background(Color.black)
                    .frame(height: 42)
                
                Button(action: {
                    withAnimation {
                        searchFilterSortController.hideAllViewsExcept(filterShow: true)
                    }
                }) {
                    Image(systemName: "slider.horizontal.3")
                        .frame(width: 18, height: 18)
                        .padding(.vertical, 12)
                }
            }
            .padding(.horizontal, 16)
            .background(.white)
            .cornerRadius(6)
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .inset(by: 0.5)
                    .stroke(Color(red: 0.86, green: 0.88, blue: 0.89), lineWidth: 1)
            )
            .padding(.bottom, 10)
        }
    }
}

#Preview {
    SearchFilterSortView()
}
