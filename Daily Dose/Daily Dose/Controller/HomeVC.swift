//
//  ViewController.swift
//  Daily Dose
//
//  Created by Noel Franceschi on 9/18/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit
import GoogleMobileAds


class HomeVC: UIViewController {

    //: Outlets
    @IBOutlet weak var bannerView: GADBannerView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
    }

}

