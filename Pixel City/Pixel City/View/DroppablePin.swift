//
//  DroppablePin.swift
//  Pixel City
//
//  Created by Noel Franceschi on 9/15/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
