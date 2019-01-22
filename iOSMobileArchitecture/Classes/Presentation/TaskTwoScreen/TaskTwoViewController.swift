//
//  TaskTwoViewController.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 19/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskTwoViewController: UIViewController {

    @IBOutlet weak var lblFurniture: UILabel!
    @IBOutlet weak var typeFurnitureTxt: UITextField!

    @IBAction func createFurniture(_ sender: UIButton) {
        guard typeFurnitureTxt.text?.isEmpty == false else {lblFurniture.text = "Вы не ввели тип мебели"
            return}
        guard let typeFurniture = typeFurnitureTxt.text else {return}
        
        var returnValue: PrototocolFurniture?
        
        switch typeFurniture.localizedCapitalized {
        case "Стол":
           returnValue = FurnitureFactory.instance.creator(typeFurniture: .table, madeIn: .BuildChair, madeFor: .BuildTable, date: "2018")
        case "Стул":
           returnValue = FurnitureFactory.instance.creator(typeFurniture: .chair, madeIn: .BuildTable, madeFor: .BuildChair, date: "2018")
        //Мы можем создать неск. полей для ввода параметров, тут чисто для примера вставлены данные.
        default:
            returnValue = nil
        }
        
        guard returnValue != nil else {lblFurniture.text = "Нет такого"
            return }
        
        lblFurniture.text = returnValue?.description
        lblFurniture.sizeToFit()
    }
}
