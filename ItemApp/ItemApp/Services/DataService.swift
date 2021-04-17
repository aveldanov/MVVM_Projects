//
//  DataService.swift
//  ItemApp
//
//  Created by Veldanov, Anton on 4/17/21.
//

import Foundation

class DataService {
    // singleton
    static let instance = DataService()
    private let categories = [
    Category(title: "Shirts", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    func getCategories()->[Category]{
        
        return categories
    }
}
