//
//  Order.swift
//  CoffeeOrderApp
//
//  Created by Veldanov, Anton on 9/17/20.
//

import Foundation

// CaseIterable allows to populate all cases from enum
enum CoffeeType:String, Codable, CaseIterable {
    case cappuccino
    case latte
    case espresso
    case cortado
}

enum CoffeeSize:String, Codable, CaseIterable {
    case small
    case medium
    case large
}

struct Order: Codable{
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeeSize
}
