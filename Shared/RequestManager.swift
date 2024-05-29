//
//  RequestManager.swift
//  test
//
//  Created by Dmitry Kosik on 18.11.22.
//

import Foundation
import Alamofire
import AlamofireImage

class RequestManager: ObservableObject {
    static let shared = RequestManager()
    
    func getCharacters(completion: @escaping ([Character]?) -> ()) {
        AF.request("https://rickandmortyapi.com/api/character").responseDecodable(of: Results.self) { results in
            completion(results.value?.results)
        }
    }
    
    func loadImage(url: String, completion: @escaping (UIImage) -> ()) {
        AF.request(url).responseImage { response in
            if case .success(let image) = response.result {
                completion(image)
            }
        }
    }
}

