//
//  AddCoffeeOrderViewModel.swift
//  CoffeeOrderApp
//
//  Created by Veldanov, Anton on 9/20/20.
//

import Foundation

struct AddCoffeeOrderViewModel{
    var name: String?
    var email: String?
    
    var types: [String]{
        return CoffeeType.allCases.map{ $0.rawValue.capitalized}
    }
    
    var sizes: [String]{
        return CoffeeSize.allCases.map{$0.rawValue.capitalized}
    }
}
