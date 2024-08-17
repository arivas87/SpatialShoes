//
//  ModelInteractor.swift
//  SpatialShoes
//
//  Created by Arturo Rivas Arias on 17/8/24.
//

import Foundation

struct ModelInteractor: DataInteractor {
    func getShoes() -> [Shoe] {
        guard let url = Bundle.main.url(forResource: "shoes", withExtension: "json") else {
            fatalError("Shoes data not found")
        }

        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode([Shoe].self, from: data)
        } catch {
            fatalError("Error loading shoes data: \(error)")
        }
    }
}
