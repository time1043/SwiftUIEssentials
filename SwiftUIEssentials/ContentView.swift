//
//  ContentView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct ContentView: View {
    var model: PetStore
    
    var body: some View {
        List {
            Section("My Pets") {
                ForEach(model.myPets) { pet in
                    PetRowView(pet: pet)
                        .swipeActions(edge: .leading) {
                            Button("Award", systemImage: "trophy") {
                                // Give pet award
                            }
                            .tint(.orange)

                            ShareLink(
                                item: pet,
                                preview: SharePreview(
                                    "Pet",
                                    image: Image(pet.name)
                                )
                            )
                        }
                }
            }
            Section("Other Pets") {
                ForEach(model.otherPets) { pet in
                    PetRowView(pet: pet)
                }
            }
        }
    }
}

#Preview {
    ContentView(model: PetStore())
}
