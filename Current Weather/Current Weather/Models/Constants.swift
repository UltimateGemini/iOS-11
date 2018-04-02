//
//  Constants.swift
//  Current Weather
//
//  Created by noel on 3/29/18.
//  Copyright © 2018 noel. All rights reserved.
//

import Foundation

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "https://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=4e5203250ff00bb13db43823f993e0f3"
let FORECAST_URL = "https://api.openweathermap.org/data/2.5/forecast?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=4e5203250ff00bb13db43823f993e0f3"

