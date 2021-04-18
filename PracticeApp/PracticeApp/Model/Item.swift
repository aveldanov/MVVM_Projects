//
//  Item.swift
//  PracticeApp
//
//  Created by Veldanov, Anton on 4/17/21.
//

import Foundation

struct Item: Decodable{
    let name: String?
    let id: Int?
    let license: Key?
    let owner: Owner?
    
}

struct Key: Decodable{
    let key: String?
}

struct Owner: Decodable{
    let received_events_url: String?
}

//
//enum CodingKeys: String, CodingKey {
//
//    case key = "key"
//    case event = "received_events_url"
//    case id = "id"
//    case owner = "owner"
//    case license = "license"
//
//}
