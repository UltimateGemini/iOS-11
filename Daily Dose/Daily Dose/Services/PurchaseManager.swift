//
//  PurchasedManager.swift
//  Daily Dose
//
//  Created by Noel Franceschi on 9/18/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation
import StoreKit

class PurchaseManager: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    
    static let instance = PurchaseManager()
    
    let IAP_REMOVE_ADS = "com.noelfranceschi.daily.dose.remove.ads"
    
    //: Vars
    var productRequest: SKProductsRequest!
    var products = [SKProduct]()
    
    func fetchProducts() {
        
        let productIds = NSSet(object: IAP_REMOVE_ADS) as! Set<String>
        productRequest = SKProductsRequest(productIdentifiers: productIds)
        productRequest.delegate = self
        productRequest.start()
    }
    
    
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        
        if response.products.count > 0 {
            print(response.products.debugDescription)
            products = response.products
        }
        
    }
    
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
        
    }
    
    
}
