//
//  CityModel.swift
//  HW28CitiesV1
//
//  Created by Artem Zhuzhgin on 06.01.2022.
//

import Foundation


struct City: Comparable {
    var usersCity: String
    var userName: String

    static func < (lhs: City, rhs: City) -> Bool {
        lhs.usersCity < rhs.usersCity
        }
}
extension City {
    static func returnCityesArray() -> [City] {
        let names = DataManager.shared.userNames
        let cityes = DataManager.shared.cityNames
        
        var cityesArray:[City] = []
        
        for index in 0..<cityes.count {
        let city = City(
            usersCity: cityes[index],
            userName: names[index])
            cityesArray.append(city)
        }
        return cityesArray.sorted(by: <)
        
    }
    
    
    
}
