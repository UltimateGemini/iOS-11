//
//  AddReviewVC.swift
//  FoodTruck Finder
//
//  Created by Noel Franceschi on 10/9/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class AddReviewVC: UIViewController {

    //: Outlets
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var reviewTitleField: UITextField!
    @IBOutlet weak var reviewTextField: UITextView!
    
    //: Vars
    var selectedFoodTruck: FoodTruck?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let truck = selectedFoodTruck {
            headerLabel.text = truck.name
        } else {
            headerLabel.text = "Error"
        }
    }
    
    @IBAction func addButtonTapped(sender: UIButton) {
        guard let truck = selectedFoodTruck else {
            showAlert(with: "Error", message: "Could not get selected truck")
            return
        }
        guard let title = reviewTitleField.text, reviewTitleField.text != "" else {
            showAlert(with: "Error", message: "Please enter a title for your review")
            return
        }
        guard let reviewText = reviewTextField.text, reviewTextField.text != "" else {
            showAlert(with: "Error", message: "Please enter some text for your review")
            return
        }
        DataService.instance.addNewReview(truck.id, title: title, text: reviewText, completion: { Success in
            if Success {
                print("We saved successfully")
                DataService.instance.getAllReviews(for: truck)
                self.dismissViewController()
            } else {
                self.showAlert(with: "Error", message: "An error occurred saving the new Review")
                print("Save was unsuccessful")
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
        let okAction = UIAlertAction(title: "Error", style: .default, handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }

}
