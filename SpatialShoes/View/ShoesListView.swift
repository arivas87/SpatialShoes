//
//  ShoesListView.swift
//  SpatialShoes
//
//  Created by Arturo Rivas Arias on 17/8/24.
//

import SwiftUI

struct ShoesListView: View {
    private let model = ShoesModel()

    private let columns: [GridItem] = [
        .init(.flexible(minimum: 200)),
        .init(.flexible(minimum: 200)),
        .init(.flexible(minimum: 200))
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(model.shoes) { shoe in
                    Text(shoe.name)
                }
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    ShoesListView()
}
