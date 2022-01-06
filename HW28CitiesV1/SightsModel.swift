//
//  SightsModel.swift
//  HW28CitiesV1
//
//  Created by Johnny Boshechka on 1/6/22.
//

struct Sight {
    let image: String
    let name: String
    let address: String
    
    static func getSights() -> [Sight] {
        var sigts: [Sight] = []
        
        for _ in 0..<5 {
            sigts.append(Sight(image:"1" ,
                               name: "Square Salavat",
                               address: "Lenina Street 1"))
        }
        return sigts
    }
}
