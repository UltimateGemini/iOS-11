//
//  Forecast.swift
//  Current Weather
//
//  Created by noel on 3/30/18.
//  Copyright © 2018 noel. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    
    var _name: String!
    var _date: String!
    var _weatherType: String!
    var _highTemp: Double!
    var _lowTemp: Double!
    var _humidity: String!
    
    var cityName: String {
        if _name == nil {
            _name = ""
        }
        
        return _date
    }
    
    var date: String {
        if _date == nil {
            _date = ""
        }
        
        return _date
    }
    
    var weatherType: String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var highTemp: Double {
        if _highTemp == nil {
            _highTemp = 0.0
        }
        return _highTemp
    }
    
    var lowTemp: Double {
        if _lowTemp == nil {
            _lowTemp = 0.0
        }
        return _lowTemp
    }
    
    var humidity: String {
        if _humidity == nil {
            _humidity = ""
        }
        return _humidity
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        
        if let cName = weatherDict["city"] as? Dictionary<String, AnyObject> {
            
            if let name = cName["name"] as? String {
                self._name = name
                print("City Name: ", self._name)
            }
        }
        
        if let main = weatherDict["main"] as? Dictionary<String, AnyObject> {
            
            if let min = main["temp_min"] as? Double {
                let kelvinToFarenheitPreDivision = (min * (9/5) - 459.67)
                
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                
                self._lowTemp = kelvinToFarenheit
                print("Low temp: ", self._lowTemp.removeDecimalPoint)
            }
            
            if let max = main["temp_max"] as? Double {
                let kelvinToFarenheitPreDivision = (max * (9/5) - 459.67)
                
                let kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                
                self._highTemp = kelvinToFarenheit
                print("High temp: ", self._highTemp.removeDecimalPoint)
            }
            
            if let humidity = main["humidity"] as? Int {
                self._humidity = "\(humidity)"
                print("Humidity: ",self._humidity)
            }
        }
        
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            
            if let main = weather[0]["main"] as? String {
                self._weatherType = main
                print("Weather type: ", self._weatherType)
            }
        }
    
        if let date = weatherDict["dt"] as? Double {
            let unixConvertDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            self._date = unixConvertDate.dayOfTheWeek()
            print("Date: ", _date)
            
        }
    }
}

//: Extension of Date() method
//: 'EEE' = Day of the week abbreviated
//: 'h' = Hour of the day
//: 'a' = AM or PM format
//: 'MMM' = Month abbreviated
//: 'd' = day in the month
//: ' = escape for custom user text
//: I used this link as referance:
//: https://www.ibm.com/support/knowledgecenter/en/SSKM8N_8.0.0/com.ibm.etools.mft.doc/ak05616_.htm
extension Date {
    func dayOfTheWeek() -> String {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "EEEE ha"
        return dateformatter.string(from: self)
    }
}

extension Double {
    var removeDecimalPoint: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
