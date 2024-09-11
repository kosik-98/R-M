//
//  Location.swift
//  R&M
//
//  Created by Dima Kosik on 23.06.24.
//

import Foundation
import UIKit

struct Location: Codable, Identifiable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    var residents: [String]
    let url: String
    let created: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case type
        case dimension
        case residents
        case url
        case created
    }
}

