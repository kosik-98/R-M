//
//  Config.swift
//  R&M
//
//  Created by Dima Kosik on 23.06.24.
//

import Foundation

class Config {
    static let shared = Config()
    
    let scheme: String = "https"
    let host: String = "rickandmortyapi.com"
}
