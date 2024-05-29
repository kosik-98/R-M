//
//  CharactersListViewModel.swift
//  R&M
//
//  Created by Dima Kosik on 29.05.24.
//

import Foundation

class CharactersListViewModel: ObservableObject {
    @Published private var characters = [Character]()
    @Published var searchText: String = ""
    
    var filteredCharacters: [Character] {
        guard !searchText.isEmpty else { return characters }
        return characters.filter { character in
            character.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    func loadCharacters() {
        RequestManager.shared.getCharacters { [weak self] characters in
            guard let characters = characters else { return }
            self?.characters = characters
        }
    }
}
