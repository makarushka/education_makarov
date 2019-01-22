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

class TaskThreePartTwoViewController: UIViewController {
    
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
            self.dateTxt.text = carsClass?.date?.dateWithFormat(with: "dd.MM.YYYY")
        }
    }
    @IBOutlet private weak var priceTxt: UITextField! {
        didSet {
            self.priceTxt.text = carsClass?.priceCount?.description
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func save(_ sender: UIButton) {
        guard let cars = carsClass else {return}
        self.delegate?.saveData(cars: cars)
        self.navigationController?.popToRootViewController(animated: true)
        
    }
}
