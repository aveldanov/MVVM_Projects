//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by Veldanov, Anton on 3/11/21.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel) {
        self.cityNameLabel.text = vm.name
        self.temperatureLabel.text = "\(vm.currentTemperature.temperature.formatAsDegree)"
    }
}
