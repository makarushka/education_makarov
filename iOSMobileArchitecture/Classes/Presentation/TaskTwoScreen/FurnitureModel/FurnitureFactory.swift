//
//  FurnitureFactory.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 19/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation

protocol Creator {
    func creator(typeFurniture: TypeFurniture, madeIn: TypeManufactured, madeFor: TypeManufactured, date: String) -> PrototocolFurniture
}


class FurnitureFactory: Creator {
    
    static let instance = FurnitureFactory()
    
    func creator(typeFurniture: TypeFurniture, madeIn: TypeManufactured, madeFor: TypeManufactured, date: String) -> PrototocolFurniture {
        switch typeFurniture {
        case .chair:
            return Chair(madeIn: madeIn, madeFor: madeFor, date: date)
        case .table:
            return Table(madeIn: madeIn, madeFor: madeFor, date: date)
        }
    }
}
