//
//  Location.swift
//  Current Weather
//
//  Created by noel on 3/30/18.
//  Copyright © 2018 noel. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
