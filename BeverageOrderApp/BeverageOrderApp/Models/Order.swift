//
//  Order.swift
//  BeverageOrderApp
//
//  Created by Veldanov, Anton on 12/20/20.
//

import Foundation

enum CoffeeSize: String, Codable {
    case small
    case medium
    case large
}

enum CoffeeType: String, Codable {
    case cappucino
    case espresso
    case latte
    case cortado
}



struct Order: Codable{
    
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeeSize
    
}
