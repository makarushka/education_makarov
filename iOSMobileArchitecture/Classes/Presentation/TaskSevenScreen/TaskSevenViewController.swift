//
//  TaslSevenViewController.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 25/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskSevenViewController: UIViewController {
    
    
    var imageAll: [UIImage] = []
    let img = UIImage(named: "Image1")
    let img2 = UIImage(named: "Image2")
    private var selectedImage: [UIImage] = []
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.width / 2
            imageView.layer.masksToBounds = true
        }
    }
    
    @IBOutlet weak var lblCount: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.imageAll.append(img!)
        self.imageAll.append(img2!)
    }
    
    @IBAction func sendImage(_ sender: UIButton) {
        DispatchQueue.global().async {
            guard let image = self.imageAll.randomElement() else {return}
            self.selectedImage.append(image)
            let countSel = self.selectedImage.filter{$0 == image}.count
            DispatchQueue.main.async {
                self.imageView.image = image
                self.lblCount.text = "Эта картинка была выбрана \(countSel) раз"
            }
        }
    }
}
