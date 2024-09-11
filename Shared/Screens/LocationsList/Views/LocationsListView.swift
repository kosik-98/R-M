//
//  LocationsListView.swift
//  R&M (iOS)
//
//  Created by Dima Kosik on 13.06.24.
//

import SwiftUI
import Alamofire

struct LocationsListView: View {
    @StateObject var viewModel = LocationsListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.filteredCharacters) { location in
                Text(location.name)
            }
                .navigationTitle("Locations list")
                .searchable(text: $viewModel.searchText)
        }.onAppear(perform: loadData)
    }
    
    func loadData() {
        viewModel.loadLocations()
    }
}
