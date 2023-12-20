//
//  ContentView.swift
//  MitraApps
//
//  Created by Faiz Azhari Mursid on 10/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
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


