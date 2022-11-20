//
//  SwiftUIView.swift
//  test
//
//  Created by Dmitry Kosik on 21.06.22.
//

import SwiftUI

enum ButtonType {
    case empty
    case firstPlayer
    case secondPlayer
}

struct CharacterView: View {
    @State var character: Character
    
    var body: some View {
        Text(character.name)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(image: UIImage())
    }
}
