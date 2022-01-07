//
//  DataManager.swift
//  teamProject
//
//  Created by Artem Zhuzhgin on 03.01.2022.
//

import Foundation

class DataManager {
    
    static var shared = DataManager()
    
    let cityNames: [String] = ["Санкт-Петербург","Москва","Тюмень","Уфа","Новосибирск"]
    let userNames = ["Дмитрий Онегин","Владислав","Артем","Динар","Дмитрий"]
    private init() {}

}
