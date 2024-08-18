//
//  ShoeView.swift
//  SpatialShoes
//
//  Created by Arturo Rivas Arias on 18/8/24.
//

import SwiftUI
import RealityKitContent
import RealityKit

struct ShoeView: View {
    let shoe: Shoe

    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(shoe.name)
                            .font(.headline)

                        Text(shoe.brand)
                            .font(.subheadline)
                            .italic()
                    }

                    Spacer()

                    Text(shoe.price, format: .currency(code: "EUR"))
                        .padding()
                        .background(.ultraThickMaterial)
                        .clipShape(.capsule)
                }

                Model3D(named: shoe.model3DName, bundle: realityKitContentBundle) { model in
                    model
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                .padding()
                .frame(width: 250, height: 200)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .padding()
            .glassBackgroundEffect()
        }
    }
}

#Preview(
    windowStyle: .automatic,
    traits: .fixedLayout(width: 300, height: 300)
) {
    ShoeView(shoe: .preview)
}
