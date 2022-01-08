//
//  CityModel.swift
//  HW28CitiesV1
//
//  Created by Johnny Boshechka on 1/7/22.
//

import Foundation

struct City {
    let usersCity: String
    let userName: String
    let population: String
    let area: String
    let foundedDate: String
    let places: [Place]
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
            var places =  [Place]()
            var categira = Categora.theatre
            for place in sights[index] {
                switch place[5] {
                case "театр":
                    categira = .theatre
                case "спорт":
                    categira = .sport
                case "архитектура":
                    categira = .architecture
                case "еда":
                    categira = .food
                case "парк":
                    categira = .park
                default:
                    break
                }
                
                let newPlace = Place(name: place[0],
                                     address: place[1],
                                     rating: place[3],
                                     city: place[2],
                                     image: place[0],
                                     discription: place[4],
                                     category: categira)
                places.append(newPlace)
            }
            
            
            let city = City(
                usersCity: cityes[index],
                userName: names[index],
                population: populations[index],
                area: areas[index],
                foundedDate: foundedDates[index],
                places: places
            )
            cityesArray.append(city)
        }
        // return cityesArray.sorted(by: <)
        return cityesArray
        
    }
}

//extension City: Comparable  {
//    static func < (lhs: City, rhs: City) -> Bool {
//        lhs.usersCity < rhs.usersCity
//    }
//}
