//
//  TaskFiveViewController.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 23/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFiveViewController: UIViewController {

    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var lblCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CreatorPhone.shared.createPhone(count: 100_000, start: {
            self.indicator.startAnimating()
        }, countCreated: { (countNumber) in
            self.lblCount.text = "Создано \(countNumber) эллементов"
        }) {
            self.indicator.stopAnimating()
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
