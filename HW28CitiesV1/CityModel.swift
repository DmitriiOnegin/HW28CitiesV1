//
//  CityModel.swift
//  HW28CitiesV1
//
//  Created by Dmitrii Onegin on 07.01.2022.
//

import Foundation

struct City {
    let usersCity: String
    let userName: String
    let population: String
    let area: String
    let foundedDate: String
    let sights: [[String]]
    
}

extension City {
    static func returnCityesArray() -> [City] {
        let names = DataManager.shared.userNames
        let cityes = DataManager.shared.cityNames
        let populations = DataManager.shared.population
        let areas = DataManager.shared.area
        let foundedDates = DataManager.shared.foundedDate
        let sights = DataManager.shared.sights
        
        var cityesArray: [City] = []
        
        for index in 0 ..< cityes.count {
            let city = City(
                usersCity: cityes[index],
                userName: names[index],
                population: populations[index],
                area: areas[index],
                foundedDate: foundedDates[index],
                sights: sights[index]
            )
            cityesArray.append(city)
        }
        return cityesArray.sorted(by: <)
        
    }
}

extension City: Comparable  {
    static func < (lhs: City, rhs: City) -> Bool {
        lhs.usersCity < rhs.usersCity
    }
}
