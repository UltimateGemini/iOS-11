//
//  DetailVC.swift
//  Current Weather
//
//  Created by noel on 3/30/18.
//  Copyright © 2018 noel. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var weatherTypeLbl: UILabel!
    @IBOutlet weak var highTempLbl: UILabel!
    @IBOutlet weak var lowTempLbl: UILabel!
    @IBOutlet weak var humidityLbl: UILabel!
    
    var weather: Forecast!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //self.navigationItem.title = weather.cityName
        
        lowTempLbl.text = "\(weather.lowTemp.removeDecimalPoint)°F"
        highTempLbl.text = "\(weather.highTemp.removeDecimalPoint)°F"
        weatherTypeLbl.text = weather.weatherType
        weatherImg.image = UIImage(named: weather.weatherType)
        dateLbl.text = weather.date
        humidityLbl.text = "\(weather.humidity)"
    }
    
}
