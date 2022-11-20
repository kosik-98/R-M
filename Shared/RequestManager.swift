//
//  RequestManager.swift
//  test
//
//  Created by Dmitry Kosik on 18.11.22.
//

import Foundation
import Alamofire

class RequestManager: ObservableObject {
    static let shared = RequestManager()
    
    func getCharacters(completion: @escaping ([Character]?) -> ()) {
        AF.request("https://rickandmortyapi.com/api/character").responseDecodable(of: Results.self) { results in
            completion(results.value?.results)
        }
    }
}

