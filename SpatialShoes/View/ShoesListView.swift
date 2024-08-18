//
//  ShoesListView.swift
//  SpatialShoes
//
//  Created by Arturo Rivas Arias on 17/8/24.
//

import SwiftUI

struct ShoesListView: View {
    private let model = ShoesModel()

    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(model.shoes) { shoe in
                    NavigationLink(value: shoe) {
                        ShoeView(shoe: shoe)
                    }
                }
            }
            .buttonStyle(.plain)
            .navigationDestination(for: Shoe.self) { shoe in
                Text(shoe.name)
            }
            .padding()
            .padding(.horizontal)
        }
    }
}

#Preview(windowStyle: .automatic) {
    NavigationStack {
        ShoesListView()
    }
}
