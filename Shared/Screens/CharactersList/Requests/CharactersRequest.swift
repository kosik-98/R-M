//
//  CharactersRequest.swift
//  R&M
//
//  Created by Dima Kosik on 23.06.24.
//

import Foundation
import Alamofire

struct CharactersRequest {
    let path = "/api/character"
    let method: HTTPMethod = .get
    
    func request(
        completion: @escaping ([Character]) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        APIRequest<EmptyRequest, Results<Character>>.request(
            path: path,
            method: .get
        ) { response in
            completion(response.results)
        } failure: { error in
            failure(error)
        }
    }
}
