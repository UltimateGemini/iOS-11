//
//  WeatherCell.swift
//  Current Weather
//
//  Created by noel on 3/30/18.
//  Copyright © 2018 noel. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var weatherType: UILabel!
    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
    func configureCell(forecast: Forecast) {
        lowTemp.text = "\(forecast.lowTemp.removeDecimalPoint)°F"
        highTemp.text = "\(forecast.highTemp.removeDecimalPoint)°F"
        weatherType.text = forecast.weatherType
        weatherImg.image = UIImage(named: forecast.weatherType)
        dateLbl.text = forecast.date
    }
}
