//
//  LocationsRequest.swift
//  R&M
//
//  Created by Dima Kosik on 23.06.24.
//

import Foundation
import Alamofire

struct LocationsRequest {
    let path = "/api/location"
    let method: HTTPMethod = .get
    
    func request(
        completion: @escaping ([Location]) -> Void,
        failure: @escaping (Error) -> Void
    ) {
        APIRequest<EmptyRequest, Results<Location>>.request(
            path: path,
            method: .get
        ) { response in
            completion(response.results)
        } failure: { error in
            failure(error)
        }
    }
}
