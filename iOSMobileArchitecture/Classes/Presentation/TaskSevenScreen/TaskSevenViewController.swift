//
//  TaslSevenViewController.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 25/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskSevenViewController: UIViewController {

    
    var imageArray: [UIImage] = []
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.width / 2
            imageView.layer.masksToBounds = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func sendImage(_ sender: UIButton) {
        let randomCount = Int.random(in: 1...200)
        var valueCount = 0
        while valueCount != randomCount {
            valueCount += 1
            for i in imageArray {
                self.imageView.image = i
            }
            print(valueCount)
        }
    }
    
}



extension UIImage {
    var countSelect: Int {
        return 0
    }
}
