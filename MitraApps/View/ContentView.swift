//
//  ContentView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var objectModel = ObjectModel()
    @State private var sliderButtonOffset: CGFloat = 0
    
    var body: some View {
        ZStack(alignment: .center) {
            VStack(alignment: .center, content: {
                HeaderView()
                
                KatalogView()
                
                Spacer()
            })
            .background(Color(red: 0.98, green: 0.98, blue: 0.98))
            .onTapGesture {
                objectModel.hideAllViews()
            }
            
            VStack {
                Spacer()
                
                if objectModel.filterShow {
                    Filter(isTrue: $objectModel.filterShow)
                        .transition(.moveAndScale)
                        .offset(y: sliderButtonOffset)
                }
                if objectModel.searchShow {
                    Search(isTrue: $objectModel.searchShow)
                        .transition(.moveAndScale)
                        .offset(y: sliderButtonOffset)
                }
                if objectModel.sortShow {
                    Sort(isTrue: $objectModel.sortShow)
                        .transition(.moveAndScale)
                        .offset(y: sliderButtonOffset)
                }
                
                HStack(alignment: .center, spacing: 16) {
                    Button(action: {
                        withAnimation {
                            objectModel.hideAllViewsExcept(searchShow: true)
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
                            objectModel.hideAllViewsExcept(sortShow: true)
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
                            objectModel.hideAllViewsExcept(filterShow: true)
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
        .ignoresSafeArea()
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


