//
//  ShoesModel.swift
//  SpatialShoes
//
//  Created by Arturo Rivas Arias on 17/8/24.
//

struct ShoesModel {
    let shoes: [Shoe]

    private let interactor: DataInteractor

    init(interactor: DataInteractor = ModelInteractor()) {
        self.interactor = interactor
        
        self.shoes = interactor.getShoes()
    }
}
