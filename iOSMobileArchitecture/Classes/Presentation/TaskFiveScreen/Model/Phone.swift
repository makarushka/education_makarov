//
//  Phone.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 23/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation


protocol Phone {
    var title: String {get}
    var description: String {get}
}

extension Phone {
    var serialNumber: Int {
        return Int.random(in: 10000...30000)
    }
}

class Iphone7: Phone {
    var title: String = "iPhone 7"
    
    var description: String = "iPhone модель - 7"
}


class CreatorPhone {
    static let shared  = CreatorPhone()
    
    var shop: [Phone] = []
    
    func createPhone(count: Int, start: @escaping () -> Void, complition: @escaping () -> Void) {
        var countCreate: Int = 0
        start()
        DispatchQueue.global().async {
            while countCreate < count{
                countCreate += 1
                let newPhone = Iphone7()
                self.shop.append(newPhone)
                print(countCreate, " Создали \(newPhone.title) с серийником \(newPhone.serialNumber)")
            }
            DispatchQueue.main.async {
            complition()
            }
        }
    }
    
}
