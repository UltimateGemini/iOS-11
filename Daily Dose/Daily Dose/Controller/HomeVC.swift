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
    @IBOutlet weak var removeAdsBtn: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAds()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupAds() {
        if UserDefaults.standard.bool(forKey: PurchaseManager.instance.IAP_REMOVE_ADS) {
            removeAdsBtn.removeFromSuperview()
            bannerView.removeFromSuperview()
        } else {
            bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
            bannerView.rootViewController = self
            bannerView.load(GADRequest())
        }
    }

    @IBAction func restoreBtnPressed(_ sender: Any) {
        PurchaseManager.instance.restorePurchases { success in
            if success {
                self.setupAds()
            }
        }
    }

    @IBAction func removeAdsPressed(_ sender: Any) {
        PurchaseManager.instance.purchaseRemoveAds { success in
            if success {
                self.bannerView.removeFromSuperview()
                self.removeAdsBtn.removeFromSuperview()
            } else {
                //show message to the user
            }
        }
    }
}

