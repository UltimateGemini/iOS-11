//
//  AddTruckVC.swift
//  FoodTruck Finder
//
//  Created by Noel Franceschi on 10/9/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class AddTruckVC: UIViewController {

    //: Outlets
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var foodTypeField: UITextField!
    @IBOutlet weak var avgCostField: UITextField!
    @IBOutlet weak var latField: UITextField!
    @IBOutlet weak var longField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonTapped(sender: UIButton) {
        guard let name = nameField.text, nameField.text != "" else {
            showAlert(with: "Error", message: "Please enter a name")
            return
        }
        guard let foodtype = foodTypeField.text, foodTypeField.text != "" else {
            showAlert(with: "Error", message: "Please enter a food type")
            return
        }
        guard let avgcost = Double(avgCostField.text!), avgCostField.text != "" else {
            showAlert(with: "Error", message: "Please enter an average cost")
            return
        }
        guard let latitude = Double(latField.text!), latField.text != "" else {
            showAlert(with: "Error", message: "Please enter a latitude")
            return
        }
        guard let longitude = Double(longField.text!), longField.text != "" else {
            showAlert(with: "Error", message: "Please enter a longitude")
            return
        }
        DataService.instance.addNewFoodTruck(name, foodtype: foodtype, avgcost: avgcost, latitude: latitude, longitude: longitude, completion: { Success in
            
            if Success {
                print("We saved successfully")
                self.dismissViewController()
            } else {
                self.showAlert(with: "Error", message: "An error occurred saving the new food truck")
                print("We didn't save successfully")
            }
        })
    }
    
    @IBAction func cancelButtonTapped(sender: UIButton) {
        dismissViewController()
    }
    
    @IBAction func backButtonTapped(sender: UIButton) {
        dismissViewController()
    }
    
    func dismissViewController() {
        OperationQueue.main.addOperation {
            _ = self.navigationController?.popViewController(animated: true)
        }
    }
    
    func showAlert(with title: String?, message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
