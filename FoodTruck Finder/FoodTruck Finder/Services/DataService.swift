//
//  DataService.swift
//  FoodTruck Finder
//
//  Created by Noel Franceschi on 10/9/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import Foundation

protocol DataServiceDelegate: class {
    func trucksLoaded()
    func reviewsLoaded()
}

class DataService {
    
    static let instance = DataService()
    
    //: Vars
    weak var delegate: DataServiceDelegate?
    var foodTrucks = [FoodTruck]()
    var reviews = [FoodTruckReview]()
    
    //: Get all food trucks.
    func getAllFoodTrucks() {
        let sessionConfig = URLSessionConfiguration.default
        
        //: Create session, and optionally set a URLSessionDelegate
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        //: Create the request
        //: Gell att the foodtrucks (GET /api/v1/foodtruck)
        guard let URL = URL(string: GET_ALL_FT_URL) else { return }
        var request = URLRequest(url: URL)
        request.httpMethod = "GET"
        
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                // Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                
                print("URL Session Task Succeeded: HTTP \(statusCode)")
                
                if let data = data {
                    self.foodTrucks = FoodTruck.parseFoodTruckJSONData(data: data)
                    self.delegate?.trucksLoaded()
                }
            } else {
                // Failure
                print("URL Session Task Failed: \(error!.localizedDescription)")
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
    //: GET all reviews for a specific Food Truck
    func getAllReviews(for truck: FoodTruck) {
        let sessionConfig = URLSessionConfiguration.default
        
        let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
        
        guard let URL = URL(string: "\(GET_ALL_FT_REVIEWS)/\(truck.id)") else { return }
        var request = URLRequest(url: URL)
        request.httpMethod = "GET"
        
        let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
            if (error == nil) {
                //: Success
                let statusCode = (response as! HTTPURLResponse).statusCode
                
                print("URL Session Task Succeeded: HTTP \(statusCode)")
                
                //:Parse JSON data
                if let data = data {
                    self.reviews = FoodTruckReview.parseReviewJSONData(data: data)
                    self.delegate?.reviewsLoaded()
                }
            } else {
                //: Failure
                print("URL Session Task Failed: \(String(describing: error?.localizedDescription))")
            }
        })
        task.resume()
        session.finishTasksAndInvalidate()
    }
    
    //: POST - Add a new Food Truck
    func addNewFoodTruck(_ name: String, foodtype: String, avgcost: Double, latitude: Double, longitude: Double, completion: @escaping callback) {
        
        //: Construct our JSON
        let json: [String: Any] = [
            "name": name,
            "foodtype": foodtype,
            "avgcost": avgcost,
            "geometry": [
                "coordinates": [
                    "lat": latitude,
                    "long": longitude
                ]
            ]
        ]
        
        do {
            //: Serialize JSON
            let jsonData = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
            
            let sessionConfig = URLSessionConfiguration.default
            
            let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
            
            guard let URL = URL(string: POST_ADD_NEW_TRUCK) else { return }
            var request = URLRequest(url: URL)
            request.httpMethod = "POST"
            
            guard let token = AuthService.instance.authToken else {
                completion(false)
                return
            }
            
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            request.httpBody = jsonData
            
            let task = session.dataTask(with: request, completionHandler: { (data: Data?, response:URLResponse?, error: Error?) -> Void in
                if (error == nil) {
                    //: Success
                    //: Check for status code 200 here. If it's not 200, then
                    //: authentication was not successful. If it is, we're done
                    let statusCode = (response as! HTTPURLResponse).statusCode
                    
                    print("URL Session Task Succeeded: HTTP \(statusCode)")
                    
                    if statusCode != 200 {
                        completion(false)
                        return
                    } else {
                        self.getAllFoodTrucks()
                        completion(true)
                    }
                } else {
                    
                    //: Failure
                    print("URL Session Task Failed: \(String(describing: error?.localizedDescription))")
                    completion(false)
                }
            })
            task.resume()
            session.finishTasksAndInvalidate()
            
        } catch let err {
            completion(false)
            print(err)
        }
    }
    
    //: POST - add a new Food Truck Review
    func addNewReview(_ foodTruckId: String, title: String, text: String, completion: @escaping callback) {
        
        let json: [String: Any] = [
            "title": title,
            "text": text,
            "foodtruck": foodTruckId
        ]
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: json, options: .prettyPrinted)
            
            let sessionConfig = URLSessionConfiguration.default
            
            let session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: nil)
            
            guard let URL = URL(string: "\(POST_ADD_NEW_REVIEW)/\(foodTruckId)") else { return }
            var request = URLRequest(url: URL)
            request.httpMethod = "POST"
            
            guard let token = AuthService.instance.authToken else {
                completion(false)
                return
            }
            
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            request.httpBody = jsonData
            
            let task = session.dataTask(with: request, completionHandler: { (data: Data?, response: URLResponse?, error: Error?) -> Void in
                if (error == nil) {
                    //: Success
                    let statusCode = (response as! HTTPURLResponse).statusCode
                    
                    print("URL Session Task Succeeded: HTTP \(statusCode)")
                    
                    if statusCode != 200 {
                        completion(false)
                        return
                    } else {
                        completion(true)
                    }
                } else {
                    
                    //: Failure
                    print("URL Session Task Failed: \(error!.localizedDescription)")
                    completion(false)
                }
            })
            task.resume()
            session.finishTasksAndInvalidate()
            
        } catch let err {
            print(err)
            completion(false)
        }
    }
    
}
