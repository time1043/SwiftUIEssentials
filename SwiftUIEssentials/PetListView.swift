//
//  PetListView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct PetListView: View {
    var model: PetStore
    
    var body: some View {
        List {
            Section("My Pets") {
                ForEach(model.myPets) { pet in
                    row(pet: pet)
                }
            }
            Section("Other Pets") {
                ForEach(model.otherPets) { pet in
                    row(pet: pet)
                }
            }
        }
    }

    private func row(pet: Pet) -> some View {
        PetRowView(pet: pet)
            .swipeActions(edge: .leading) {
                Button("Award", systemImage: "trophy") {
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
    PetListView(model: PetStore())
}

#Preview("Adaptive buttons") {
    Button("Reward", systemImage: "trophy") {
        // Give pet award
    }
    // .buttonStyle(.borderless)
    // .buttonStyle(.bordered)
    // .buttonStyle(.borderedProminent)
}

#Preview("Adaptive toggles") {
    @Previewable @State var isNocturnal = false

    Toggle("Nocturnal Mode", systemImage: "moon", isOn: $isNocturnal)
    // .toggleStyle(.switch)
    // .toggleStyle(.checkbox)
    // .toggleStyle(.button)
}
