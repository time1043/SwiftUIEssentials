//
//  PetStoreViewModel.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

@Observable
class PetStoreViewModel {
    enum SearchScope: Hashable {
        case allPets
        case myPets
        case otherPets
    }

    struct SearchToken: Identifiable {
        let id = UUID()
        var kind: Pet.Kind
    }

    var petStore: PetStore
    var searchText: String = ""
    var searchTokens: [SearchToken] = []
    var searchScope: SearchScope = .allPets

    init(petStore: PetStore) {
        self.petStore = petStore
    }

    private func matches(_ pet: Pet) -> Bool {
        let matchesText =
            searchText.isEmpty
            || pet.name.localizedCaseInsensitiveContains(searchText)
            || pet.trick.localizedCaseInsensitiveContains(searchText)
            || pet.kind.name.localizedCaseInsensitiveContains(searchText)

        let matchesTokens =
            searchTokens.isEmpty
            || searchTokens.contains { $0.kind == pet.kind }

        return matchesText && matchesTokens
    }

    var myPets: [Pet] {
        guard searchScope != .otherPets else { return [] }

        return petStore.myPets.filter(matches)
    }

    var otherPets: [Pet] {
        guard searchScope != .myPets else { return [] }

        return petStore.otherPets.filter(matches)
    }
}
