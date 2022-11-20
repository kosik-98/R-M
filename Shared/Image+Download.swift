//
//  UIImage+Download.swift
//  test
//
//  Created by Dmitry Kosik on 20.11.22.
//

import Foundation
import UIKit
import SwiftUI

extension Image {
    Image
    public func imageFromUrl(urlString: String) -> Data {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else { return }
                
            }
        }
    }
}
