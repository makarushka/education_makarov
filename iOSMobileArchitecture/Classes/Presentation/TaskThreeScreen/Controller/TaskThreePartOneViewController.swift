//
//  TaskThreePartOneViewController.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 22/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit



class TaskThreePartOneViewController: UIViewController, OneSendDelegate {
    
    var classCars = CarsClass()
    var structCars = CarsStruct()
    
    @IBOutlet weak var lblModel: UILabel!
    
    func saveData(cars: CarsClass) {
        comparison(oneModel: self.classCars, twoModel: cars)
        self.classCars = cars
    }
    
    private func comparison(oneModel: ModelProtocol, twoModel: ModelProtocol) {
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
        if oneModel.date?.description != twoModel.date?.description {
            returnValue.append("Изменена дата")
        }
        
        if returnValue.isEmpty {
            lblModel.text = "Нет изменений"
        } else {
            var resultString: String = String()
            returnValue.forEach {
                resultString += $0
            }
            lblModel.text = resultString
            lblModel.sizeToFit()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TaskThreePartTwoViewController" {
            
            let vc = segue.destination as? TaskThreePartTwoViewController
            vc?.delegate = self
            vc?.carsClass = classCars
        } else {
            let vc = segue.destination as? TaskThreePartThreeViewController
            vc?.carsStruct = structCars
            vc?.didResult = { model in
                self.comparison(oneModel: self.structCars, twoModel: model)
                self.structCars = model
            }
        }
    }
    
}
