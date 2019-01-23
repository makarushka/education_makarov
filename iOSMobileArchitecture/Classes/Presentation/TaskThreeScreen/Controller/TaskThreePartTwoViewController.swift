//
//  TaskThreePartTwoViewController.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 22/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

protocol OneSendDelegate {
    func saveData(cars: ModelProtocol)
}

class TaskThreePartTwoViewController: UIViewController, UITextFieldDelegate {
    
    var carsClass: ModelProtocol?
    
    var delegate: OneSendDelegate?
    
    
    @IBOutlet private weak var titleTxt: UITextField! {
        didSet {
            self.titleTxt.text = carsClass?.title
        }
    }
    
    @IBOutlet private weak var descriptionTxt: UITextField! {
        didSet {
            self.descriptionTxt.text = carsClass?.description
        }
    }
    @IBOutlet private weak var colorTxt: UITextField! {
        didSet {
            self.colorTxt.text = carsClass?.color
        }
    }
    @IBOutlet private weak var dateTxt: UITextField! {
        didSet {
            guard let date = carsClass?.date else {return}
            self.dateTxt.text = date.stringWithDate()
        }
    }
    @IBOutlet private weak var priceTxt: UITextField! {
        didSet {
            self.priceTxt.text = carsClass?.priceCount?.description
        }
    }
    
    
    @IBAction func save(_ sender: UIButton) {
        
        
        
        let newCar = CarsClass()
        newCar.title = titleTxt.text
        newCar.description = descriptionTxt.text
        newCar.color = colorTxt.text
        newCar.priceCount = Int(priceTxt.text!)
        newCar.date = dateTxt.text?.dateWithString()
        
        self.delegate?.saveData(cars: newCar)
        self.navigationController?.popToRootViewController(animated: true)
        
    }
}
