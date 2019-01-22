//
//  ModelProtocol.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 22/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import Foundation

protocol ModelProtocol {
    var title: String? {get}
    var description: String? {get}
    var color: String? {get}
    var priceCount: Int? {get}
    var date: Date? {get}
}


extension Date {
    func dateWithFormat(with format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
