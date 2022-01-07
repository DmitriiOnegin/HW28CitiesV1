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
    let places: [Place]
    //let sights: [[String]]
}

extension City {
    static func returnCityesArray() -> [City] {
        let names = DataManager.shared.userNames
        let cityes = DataManager.shared.cityNames
        let populations = DataManager.shared.population
        let areas = DataManager.shared.area
        let foundedDates = DataManager.shared.foundedDate
        let sights = DataManager.shared.sights
        
//        ["место категории театр",
//         "адрес",
//         "город",
//         "рейтинг",
//         "описание",
//         "театр"],
        
//    case theatre = "Театр"
//    case sport = "Спорт"
//    case architecture = "Архитектура"
//    case food = "Еда"
//    case park = "Парк"
        
        var cityesArray: [City] = []
        
        for index in 0 ..< cityes.count {
            var places =  [Place]()
          //  var categiry = Category.Type
            for place in sights[index] {
                switch place[5] {
                case "театр":
                        
                case "спорт":
                    
                case "архитектура":
                    
                case "еда":
                    
                case "парк":
                    
                default:
                    break
                }
                
                let newPlace = Place(name: place[0],
                                     address: place[1],
                                     rating: place[3],
                                     city: place[2],
                                     image: place[0],
                                     discription: place[4],
                                     category: )
                
            }
            
            
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
