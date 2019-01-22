//
//  PrtotocolFurniture.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 19/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation


protocol PrototocolFurniture {
    var title: String {get}
    var date: String {get}
    var madeIn: TypeManufactured {get}
    var madeFor: TypeManufactured {get}
    init(madeIn: TypeManufactured, madeFor: TypeManufactured, date: String)
}

extension PrototocolFurniture {
    var description: String {
        return "\(self.title) был изготовлен для компании \(self.madeFor.rawValue) от \(self.madeIn.rawValue)."
    }
}


enum TypeManufactured: String {
    case BuildChair = """
    ООО "СтройСтул"
    """
    case BuildTable = """
    ООО "СтройСтол"
    """
}

enum TypeFurniture: String {
    case chair = "Стул"
    case table = "Стол"
}
