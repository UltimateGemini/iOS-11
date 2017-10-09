//
//  FoodTruckReview.swift
//  FoodTruck Finder
//
//  Created by Noel Franceschi on 10/9/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

struct FoodTruckReview {
    
    //: Vars
    var id: String = ""
    var title: String = ""
    var text: String = ""
    
    static func parseReviewJSONData(data: Data) -> [FoodTruckReview] {
        var foodTruckReveiws = [FoodTruckReview] ()
        
        do {
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
            
            //: Parse JSON Data
            if let reviews = jsonResult as? [Dictionary<String, AnyObject>] {
                for review in reviews {
                    
                    var newReview = FoodTruckReview()
                    newReview.id = review["_id"] as! String
                    newReview.title = review["title"] as! String
                    newReview.text = review["text"] as! String
                    
                    foodTruckReveiws.append(newReview)
                }
            }
        } catch let err {
            print(err)
        }
        return foodTruckReveiws
    }
}
