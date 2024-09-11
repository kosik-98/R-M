//
//  CharactersListView.swift
//  Shared
//
//  Created by Dmitry Kosik on 20.06.22.
//

import SwiftUI
import Alamofire

struct CharactersListView: View {
    @ObservedObject var viewModel = CharactersListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.filteredCharacters) { character in
                CharacterView(character: character)
            }
                .navigationTitle("Characters list")
                .searchable(text: $viewModel.searchText)
        }.onAppear(perform: loadData)
    }
    
    func loadData() {
        viewModel.loadCharacters()
    }
}

struct CharactersListView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersListView()
    }
}
