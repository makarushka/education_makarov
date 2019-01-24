//
//  TaskThreePartThreeViewController.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 22/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskThreePartThreeViewController: UIViewController {

    var carsStruct: ModelProtocol?
    
    var didResult: ((CarsStruct) -> Void)?
    
    @IBOutlet private weak var titleTxt: UITextField! {
        didSet {
            self.titleTxt.text = carsStruct?.title
        }
    }
    
    @IBOutlet private weak var descriptionTxt: UITextField! {
        didSet {
            self.descriptionTxt.text = carsStruct?.description
        }
    }
    @IBOutlet private weak var colorTxt: UITextField! {
        didSet {
            self.colorTxt.text = carsStruct?.color
        }
    }
    @IBOutlet private weak var dateTxt: UITextField! {
        didSet {
            guard let date = carsStruct?.date else {return}
            self.dateTxt.text = date.stringWithDate()
        }
    }
    @IBOutlet private weak var priceTxt: UITextField! {
        didSet {
            self.priceTxt.text = carsStruct?.priceCount?.description
        }
    }
    
    
    @IBAction func sendDate(_ sender: UIButton) {
        var structCars = CarsStruct()
        structCars.title = titleTxt.text
        structCars.description = descriptionTxt.text
        structCars.color = colorTxt.text
        structCars.priceCount = Int(priceTxt.text!)
        structCars.date = dateTxt.text?.dateWithString()
        self.didResult!(structCars)
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
