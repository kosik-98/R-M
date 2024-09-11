//
//  TabItemView.swift
//  R&M
//
//  Created by Dima Kosik on 5.06.24.
//

import Foundation
import SwiftUI

struct TabItemView: View {
    @State var image: String
    @State var title: String
    
    var body: some View {
        HStack {
            Image(image)
            Text(title)
        }
    }
}
