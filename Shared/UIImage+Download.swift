//
//  UIImage+Download.swift
//  test
//
//  Created by Dmitry Kosik on 20.11.22.
//

import Foundation
import UIKit

extension UIImage {
    convenience init?(urlString: String) {
        self.init()
        guard let url = URL(string: urlString), let data = try? Data(contentsOf: url) else { return }
        self.init(data: data)
    }
}
