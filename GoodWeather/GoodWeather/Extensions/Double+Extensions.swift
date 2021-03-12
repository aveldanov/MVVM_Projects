//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Veldanov, Anton on 3/11/21.
//  Copyright © 2021 Mohammad Azam. All rights reserved.
//

import Foundation

extension Double {
    
    var formatAsDegree: String {
        return String(format: "%.0f°",self)
    }
    
}
