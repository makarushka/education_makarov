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
        lblModel.text = cars.title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TaskThreePartTwoViewController" {
            
            let vc = segue.destination as? TaskThreePartTwoViewController
            vc?.delegate = self
            vc?.carsClass = classCars
        } else {
            
        }
    }

}
