//
//  SwiftUIView.swift
//  test
//
//  Created by Dmitry Kosik on 21.06.22.
//

import SwiftUI

struct CharacterView: View {
    @State var character: Character
    
    var body: some View {
        NavigationLink {
            Text(character.name)
        } label: {
            HStack{
                Image(uiImage: UIImage(urlString: character.image) ?? UIImage())
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text(character.name)
            }
        }

    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(
            character: Character(
                id: 1,
                name: "1",
                status: "1",
                species: "1",
                type: "1",
                gender: "1",
                image: "1",
                origin: Origin(
                    name: "1",
                    url: "1"
                ),
                location: Location(
                    name: "1",
                    url: "1"
                )
            )
        )
    }
}
