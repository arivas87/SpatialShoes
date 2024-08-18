//
//  PreviewShoe.swift
//  SpatialShoes
//
//  Created by Arturo Rivas Arias on 18/8/24.
//

extension Shoe {
    static let preview: Shoe = {
        Shoe(
            id: 10123,
            name: "Urban Explorer",
            brand: "UrbanStride",
            size: [
                38,
                39,
                40,
                41,
                42
            ],
            price: 99.99,
            description: "Descubre la combinación perfecta entre estilo y comodidad con nuestras **Urban Explorer** de **UrbanStride**. Diseñadas para aquellos que buscan un calzado versátil y moderno, estas botas de cuero tipo zapatillas ofrecen una apariencia robusta y sofisticada sin sacrificar el confort. Confeccionadas con cuero de alta calidad, estas botas son ideales tanto para el día a día como para ocasiones especiales.\n\n**Características Destacadas:**\n- **Material:** Cuero genuino que proporciona durabilidad y un acabado premium.\n- **Diseño:** Una fusión de la clásica bota y la moderna zapatilla, perfecta para cualquier atuendo.\n- **Comodidad:** Plantilla acolchada y soporte óptimo para largas jornadas.\n- **Versatilidad:** Disponible en múltiples tallas para adaptarse a todas tus necesidades.\n\nDéjate seducir por el estilo atemporal y la elegancia de nuestras **Urban Explorer**, y lleva tu look al siguiente nivel.",
            model3DName: "leatherShoes",
            type: "Botas",
            materials: ["Cuero"],
            origin: "Alemania",
            gender: "Unisex",
            weight: 1.2,
            colors: [
                "Negro",
                "Marrón"
            ],
            warranty: 2,
            certifications: [
                "Certificación de Calidad",
                "Hecho a mano"
            ]
        )
    }()
}
