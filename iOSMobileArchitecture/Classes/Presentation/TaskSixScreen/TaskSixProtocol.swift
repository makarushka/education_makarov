//
//  TaskSixProtocol.swift
//  iOSMobileArchitecture
//
//  Created by Andrey Chernyshev on 18/12/2018.
//  Copyright © 2018 Andrey Chernyshev. All rights reserved.
//
import Foundation

protocol TaskSixProtocol {
    associatedtype E
    
    func asValue() -> E
}


class TaskSix<T: TaskSixProtocol> where T.E == Int {
    
    func test(value: T) {
        print(value.asValue())
    }
}



