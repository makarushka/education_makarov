//
//  CarsStruct.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 22/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation



struct CarsStruct: ModelProtocol {
    var title: String? = "Структура машины"
    
    var description: String? = "Реализация через структуру"
    
    var color: String? = "Red"

    var priceCount: Int? = 2_000_000
    
    var date: Date? = Date()
}
