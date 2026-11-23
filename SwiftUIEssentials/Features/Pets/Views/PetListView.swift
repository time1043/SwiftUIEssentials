//
//  PetListView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct PetListView: View {
    @Environment(\.openWindow) private var openWindow

    @Bindable var viewModel: PetStoreViewModel

    var body: some View {
        List {
            Section("My Pets") {
                ForEach(viewModel.myPets) { pet in
                    row(pet: pet)
                }
            }
            Section("Other Pets") {
                ForEach(viewModel.otherPets) { pet in
                    row(pet: pet)
                }
            }
        }
        .searchable(
            text: $viewModel.searchText,
            editableTokens: $viewModel.searchTokens
        ) { $token in
            Label(token.kind.name, systemImage: token.kind.systemImage)
        }
        .searchScopes($viewModel.searchScope) {
            Text("All Pets").tag(PetStoreViewModel.SearchScope.allPets)
            Text("My Pets").tag(PetStoreViewModel.SearchScope.myPets)
            Text("Other Pets").tag(PetStoreViewModel.SearchScope.otherPets)
        }
        .searchSuggestions {
            PetSearchSuggestions(viewModel: viewModel)
        }
    }

    private func row(pet: Pet) -> some View {
        Button {
            openWindow(id: "detail", value: pet.id)
        } label: {
            PetRowView(pet: pet)
        }
        .buttonStyle(.plain)
        .swipeActions(edge: .leading) {
            Button("Reward", systemImage: "trophy") {
                pet.giveAward()
            }
            .tint(.orange)

            ShareLink(
                item: pet,
                preview: SharePreview("Pet", image: Image(pet.name))
            )
        }
    }
}

#Preview("PetListView") {
    PetListView(viewModel: PetStoreViewModel(petStore: PetStore()))
}

#Preview("PetListView within NavigationStack") {
    NavigationStack {
        PetListView(viewModel: PetStoreViewModel(petStore: PetStore()))
    }
}
