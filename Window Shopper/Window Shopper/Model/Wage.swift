//
//  Wage.swift
//  Window Shopper
//
//  Created by Noel Franceschi on 8/28/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
    
    
}
