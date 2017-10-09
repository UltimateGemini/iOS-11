//
//  MainVC.swift
//  FoodTruck Finder
//
//  Created by Noel Franceschi on 10/9/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    //: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //: Vars
    var dataService = DataService.instance
    var authService = AuthService.instance
    
    var logInVC: LoginVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataService.delegate = self
        
        tableView.delegate = self
        tableView.dataSource = self
        
        DataService.instance.getAllFoodTrucks()
    }
    
    func showLogInVC() {
        logInVC = LoginVC()
        logInVC?.modalPresentationStyle = UIModalPresentationStyle.formSheet
        self.present(logInVC!, animated: true, completion: nil)
    }
    
    @IBAction func addButtonTapped(sender: UIButton) {
        if AuthService.instance.isAuthenticated == true {
            performSegue(withIdentifier: "showAddTruckVC", sender: self)
        } else {
            showLogInVC()
        }
    }
    
    

}

extension MainVC: DataServiceDelegate {
    func trucksLoaded() {
        OperationQueue.main.addOperation {
            self.tableView.reloadData()
        }
    }
    
    func reviewsLoaded() {
        
    }
}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataService.foodTrucks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "FoodTruckCell", for: indexPath) as? FoodTruckCell {
            cell.configureCell(truck: dataService.foodTrucks[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
