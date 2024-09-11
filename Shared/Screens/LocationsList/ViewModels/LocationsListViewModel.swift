//
//  LocationsListViewModel.swift
//  R&M (iOS)
//
//  Created by Dima Kosik on 13.06.24.
//

import Foundation

class LocationsListViewModel: ObservableObject {
    @Published private var locations = [Location]()
    @Published var searchText: String = ""
    
    var filteredCharacters: [Location] {
        guard !searchText.isEmpty else { return locations }
        return locations.filter { location in
            location.name.lowercased().contains(searchText.lowercased())
        }
    }
    
    func loadLocations() {
        LocationsRequest().request { locations in
            self.locations = locations
        } failure: { error in
            print(error)
        }

    }
}
