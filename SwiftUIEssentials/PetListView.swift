//
//  PetListView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct PetListView: View {
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
        .searchable(text: $viewModel.searchText)
    }

    private func row(pet: Pet) -> some View {
        PetRowView(pet: pet)
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

#Preview {
    PetListView(viewModel: PetStoreViewModel(petStore: PetStore()))
}
