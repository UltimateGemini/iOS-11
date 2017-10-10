//
//  DetailsVC.swift
//  FoodTruck Finder
//
//  Created by Noel Franceschi on 10/9/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit
import MapKit

class DetailsVC: UIViewController {

    //: Outlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var avgCostLabel: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    
    //: Vars
    var selectedFoodTruck: FoodTruck?
    var logInVC: LoginVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedFoodTruck?.name
        foodTypeLabel.text = selectedFoodTruck?.foodType
        avgCostLabel.text = "\(selectedFoodTruck!.avgCost)"
        
        mapView.addAnnotation(selectedFoodTruck!)
        centerMapOnLocation(CLLocation(latitude: selectedFoodTruck!.lat, longitude: selectedFoodTruck!.long))
    }
    
    func centerMapOnLocation(_ location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(selectedFoodTruck!.coordinate, 1000, 1000)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    @IBAction func backButtonTapped(sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBAction func reviewsButtonTapped(sender: UIButton) {
        performSegue(withIdentifier: "showReviewsVC", sender: self)
    }
    
    @IBAction func addReviewButtonTapped(sender: UIButton) {
        if AuthService.instance.isAuthenticated == true {
            performSegue(withIdentifier: "showAddReviewVC", sender: self)
        } else {
            showLogInVC()
        }
    }
    
    func showLogInVC() {
        logInVC = LoginVC()
        logInVC?.modalPresentationStyle = UIModalPresentationStyle.formSheet
        self.present(logInVC!, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showReviewsVC" {
            let desinationViewController = segue.destination as! ReviewsVC
            desinationViewController.selectedFoodTruck = selectedFoodTruck
        } else if segue.identifier == "showAddReviewVC" {
            let destinationViewController = segue.destination as! AddReviewVC
            destinationViewController.selectedFoodTruck = selectedFoodTruck
        }
    }
}
