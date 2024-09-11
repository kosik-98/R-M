//
//  Character.swift
//  test
//
//  Created by Dmitry Kosik on 20.11.22.
//

import Foundation
import UIKit

struct Character: Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let imageURL: String
    var image: UIImage?
    let origin: Origin
    let location: Origin
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case status
        case species
        case type
        case gender
        case imageURL = "image"
        case origin
        case location
    }
}

struct Origin: Codable {
    let name: String
    let url: String
}

struct Results<Model: Decodable>: Decodable {
    let results: [Model]
}
