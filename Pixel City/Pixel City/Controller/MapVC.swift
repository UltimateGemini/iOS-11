//
//  MapVC.swift
//  Pixel City
//
//  Created by Noel Franceschi on 9/14/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    //: Outlets
    @IBOutlet weak var mapView: MKMapView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
    }
    
    @IBAction func centerMapBtnWasPressed(_ sender: Any) {
        
    }
    

}

extension MapVC: MKMapViewDelegate {
    
    
}

