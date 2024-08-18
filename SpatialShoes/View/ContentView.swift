//
//  ContentView.swift
//  SpatialShoes
//
//  Created by Arturo Rivas Arias on 19/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Catálogo", systemImage: "house") {
                NavigationStack {
                    ShoesListView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
