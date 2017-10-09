//
//  MainVC.swift
//  FoodTruck Finder
//
//  Created by Noel Franceschi on 10/9/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DataService.instance.delegate = self
        DataService.instance.getAllFoodTrucks()
    }

}

extension MainVC: DataServiceDelegate {
    func trucksLoaded() {
//        print(DataService.instance.foodTrucks)
    }
    
    func reviewsLoaded() {
        
    }
}
