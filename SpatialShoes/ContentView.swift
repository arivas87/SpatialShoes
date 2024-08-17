//
//  ContentView.swift
//  SpatialShoes
//
//  Created by Arturo Rivas Arias on 08/08/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("Hola")
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Ey")
                            .font(.title)
                    }
                }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
