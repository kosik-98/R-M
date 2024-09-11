//
//  APIRequest.swift
//  R&M (iOS)
//
//  Created by Dima Kosik on 13.06.24.
//

import Foundation
import Alamofire
import AlamofireImage

typealias CompletionHandler<Model: Decodable> = (Model) -> Void
typealias FailureHandler = (Error) -> Void

struct EmptyRequest: Encodable {}
struct EmptyResponse: Decodable {}

class APIRequest<Parameters: Encodable, Model: Decodable> {
    static func request(
        scheme: String = Config.shared.scheme,
        host: String = Config.shared.host,
        path: String,
        method: HTTPMethod,
        parameters: Parameters? = nil,
        completion: @escaping CompletionHandler<Model>,
        failure: @escaping FailureHandler
    ) {
        
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = path
        
        guard let url = components.url else { return }
        
        AF.request(
            url,
            method: method,
            parameters: parameters
        ).responseData { response in
            switch response.result {
            case .success(let data):
                if let code = response.response?.statusCode {
                    switch code {
                    case 200...299:
                        if let response = try? JSONDecoder().decode(
                            Model.self,
                            from: data
                        ) {
                            completion(response)
                        } else {
                            print("Decoding error")
                        }
                    default:
                        let error = NSError(domain: response.debugDescription, code: code)
                        failure(error)
                    }
                }
            case .failure(let error):
                failure(error)
            }
        }
    }
    
    static func loadImage(url: String, completion: @escaping (UIImage) -> ()) {
        AF.request(url).responseImage { response in
            if case .success(let image) = response.result {
                completion(image)
            }
        }
    }
}
