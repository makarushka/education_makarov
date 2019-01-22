//
//  TaskFourViewController.swift
//  iOSMobileArchitecture
//
//  Created by Yuriy on 22/01/2019.
//  Copyright © 2019 Andrey Chernyshev. All rights reserved.
//

import UIKit

class TaskFourViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var allFurniture: [Furniture] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let modern = CreateModern()
        let victorian = CreateVictorian()
        
        let modBed = modern.createBed()
        let modSofa = modern.createSofa()
        
        let vicBed = victorian.createBed()
        let vicSofa = victorian.createSofa()
        
        allFurniture.append(modBed)
        allFurniture.append(modSofa)
        allFurniture.append(vicBed)
        allFurniture.append(vicSofa)
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
}


extension TaskFourViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return allFurniture.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = allFurniture[indexPath.row].title
        return cell
    }
}
