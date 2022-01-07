//
//  CityModel.swift
//  HW28CitiesV1
//
//  Created by Johnny Boshechka on 1/7/22.
//

import Foundation

struct City {
    let name: String
    let image: String
    let population: Float
    let area: Float
    let foundedDate: Int
    
    let sights: [Sight]
    
    static func getCity() -> City {
        City(name: "Ufa", image: "1", population: 111, area: 47, foundedDate: 1934 , sights: Sight.getSights())
    }
}

