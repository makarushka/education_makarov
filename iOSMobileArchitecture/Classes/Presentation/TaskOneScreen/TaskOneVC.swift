//
//  TaskOneVC.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 19/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskOneVC: UIViewController {
    
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var oneTxtField: UITextField!
    @IBOutlet weak var twoTxtField: UITextField!
    
    
    @IBAction func sendTxt(_ sender: UIButton) {
        if oneTxtField.text!.isEmpty && twoTxtField.text!.isEmpty {
            lblText.text = "Вы не ввели текст"
        } else if oneTxtField.text!.count > 0 {
            lblText.text = oneTxtField.text
        } else {
            lblText.text = twoTxtField.text
        }
    }
}
