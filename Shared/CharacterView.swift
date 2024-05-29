//
//  SwiftUIView.swift
//  test
//
//  Created by Dmitry Kosik on 21.06.22.
//

import SwiftUI

struct CharacterView: View {
    @State var character: Character
    @State var image = UIImage()
    
    var body: some View {
        NavigationLink {
            Text(character.name)
        } label: {
            HStack{
                Image(uiImage: image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                Text(character.name)
            }
        }.onAppear(perform: loadData)
    }
    
    func loadData() {
        guard let image = character.image else {
            RequestManager.shared.loadImage(url: character.imageURL) { image in
                self.image = image
                character.image = image
            }
            return
        }
        self.image = image
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
                imageURL: "",
                image: UIImage(),
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
