//
//  TaskThreePartOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 22/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit



class TaskThreePartOneViewController: UIViewController, OneSendDelegate {
    
    let classCars = CarsClass()
    let structCars = CarsStruct()
    
    @IBOutlet weak var lblModel: UILabel!
    
    func saveData(cars: ModelProtocol) {
        guard let result: [String] = comparison(oneModel: self.classCars, twoModel: cars) else {lblModel.text = "Изменений нет"}
        var resultString: String = String()
        result.forEach {
            resultString += $0
        }
        lblModel.text = resultString
        lblModel.sizeToFit()
        
    }
    
    private func comparison(oneModel: ModelProtocol, twoModel: ModelProtocol) -> [String] {
        var returnValue: [String] = []
        if oneModel.title != twoModel.title {
            returnValue.append("Изменено название\n")
        }
        if oneModel.description != twoModel.description {
            returnValue.append("Изменено описание\n")
        }
        if oneModel.color != twoModel.color {
            returnValue.append("Изменен цвет\n")
        }
        if oneModel.priceCount != twoModel.priceCount {
            returnValue.append("Изменена цена\n")
        }
        if oneModel.date != twoModel.date {
            returnValue.append("Изменена дата")
        }
        
        return returnValue
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TaskThreePartTwoViewController" {
            
            let vc = segue.destination as? TaskThreePartTwoViewController
            vc?.delegate = self
            vc?.carsClass = classCars
        } else {
            let vc = segue.destination as? TaskThreePartThreeViewController
            vc?.carsStruct = structCars
        }
    }

}
