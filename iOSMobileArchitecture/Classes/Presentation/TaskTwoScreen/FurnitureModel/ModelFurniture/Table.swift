//
//  Table.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 19/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation


class Table: PrototocolFurniture {
    var title: String = "Стол"
    var madeIn: TypeManufactured
    var madeFor: TypeManufactured
    var date: String
    
    required init(madeIn: TypeManufactured, madeFor: TypeManufactured, date: String) {
        self.madeIn = madeIn
        self.madeFor = madeFor
        self.date = date
    }
}
