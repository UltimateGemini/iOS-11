//
//  FoodTruck.swift
//  FoodTruck Finder
//
//  Created by Noel Franceschi on 10/9/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation
import CoreLocation
import MapKit

class FoodTruck: NSObject, MKAnnotation {
    
    //: Vars
    var id: String = ""
    var name: String = ""
    var foodType: String = ""
    var avgCost: Double = 0.0
    var geomType: String = "Point"
    var lat: Double = 0.0
    var long: Double = 0.0
    
    @objc var title: String?
    @objc var subtitle: String?
    
    @objc var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.lat, longitude: self.long)
    }
    
    static func parseFoodTruckJSONData(data: Data) -> [FoodTruck] {
        
        var foodtrucks = [FoodTruck]()
        
        do{
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            
            //: Parse JSON data
            if let trucks = jsonResult as? [Dictionary<String, AnyObject>] {
                for truck in trucks {
                    
                    let newTruck = FoodTruck()
                    newTruck.id = truck["_id"] as! String
                    newTruck.name = truck["name"] as! String
                    newTruck.foodType = truck["foodtype"] as! String
                    newTruck.avgCost = truck["avgcost"] as! Double
                    let geometry = truck["geometry"] as! Dictionary<String, AnyObject>
                    newTruck.geomType = geometry["type"] as! String
                    let coords = geometry["coordinates"] as! Dictionary<String, AnyObject>
                    newTruck.lat = coords["lat"] as! Double
                    newTruck.long = coords["long"] as! Double
                    newTruck.title = newTruck.name
                    newTruck.subtitle = newTruck.foodType
                    
                    foodtrucks.append(newTruck)
                }
            }
            
        } catch let err {
            print(err)
        }
        return foodtrucks
    }
    
    
    
    
    
    
    
    
}
