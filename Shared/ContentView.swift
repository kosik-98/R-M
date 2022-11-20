//
//  ContentView.swift
//  Shared
//
//  Created by Dmitry Kosik on 20.06.22.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    @State var characters = [Character]()
    
    var body: some View {
        NavigationView {
            List(characters) { character in
                CharacterView(character: character)
            }.navigationTitle("Characters list")
        }.onAppear(perform: loadData)
    }
    
    func loadData() {
        RequestManager.shared.getCharacters { characters in
            guard let characters = characters else { return }
            self.characters = characters
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
