//
//  Character.swift
//  test
//
//  Created by Dmitry Kosik on 20.11.22.
//

import Foundation

struct Character: Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let image: String
    let origin: Origin
    let location: Location
}

struct Origin: Codable {
    let name: String
    let url: String
}

struct Location: Codable {
    let name: String
    let url: String
}

struct Results: Codable {
    let results: [Character]
}
