//
//  Protocol.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 22/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation

protocol Furniture {
    var title: String {get}
    var description: String {get}
}

protocol Bed: Furniture {
    func replace()
}

protocol Sofa: Furniture {
    func spreadOut()
}

protocol AbstractCreator {
    func createBed() -> Bed
    func createSofa() -> Sofa
}


class VictorianBed: Bed {
    var title: String = "Викторианская кровать"
    
    var description: String = "Кровать в викторианском стиле"
    
    func replace() {
        print("Разложили викторианскую кровать")
    }
    
}

class ModernBed: Bed {
    var title: String = "Кровать Модерн"
    
    var description: String = "Кровать в стиле Модерн"
    
    func replace() {
        print("Разложили кровать модерн")
    }
}


class VictorianSofa: Sofa {
    var title: String = "Викторианский диван"
    
    var description: String = "Диван в Викторианском стиле"
    
    func spreadOut() {
        print("Разложили викторианский диван")
    }
}

class ModernSofa: Sofa {
    var title: String = "Диван Модерн"
    
    var description: String = "Диван в стиле Модерн"
    
    func spreadOut() {
        print("Разложили диван модерн")
    }
}

class CreateVictorian: AbstractCreator {
    func createBed() -> Bed {
        return VictorianBed()
    }
    
    func createSofa() -> Sofa {
        return VictorianSofa()
    }
}


class CreateModern: AbstractCreator {
    func createBed() -> Bed {
        return ModernBed()
    }
    
    func createSofa() -> Sofa {
        return ModernSofa()
    }
}
