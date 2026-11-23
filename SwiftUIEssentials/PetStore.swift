//
//  PetStore.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

@Observable
class PetStore {
    var allPets: [Pet] = [
        Pet("Whiskers", kind: .cat, trick: "Tightrope walking", profileImage: "Whiskers", favoriteColor: .green),
        Pet("Roofus", kind: .dog, trick: "Home runs", profileImage: "Roofus", favoriteColor: .blue),
        Pet("Bubbles", kind: .fish, trick: "100m freestyle", profileImage: "Bubbles", favoriteColor: .orange),
        Pet("Mango", kind: .bird,  trick: "Basketball dunk", profileImage: "Mango", favoriteColor: .green),
        Pet("Ziggy", kind: .lizard, trick: "Parkour", profileImage: "Ziggy", favoriteColor: .purple),
        Pet("Sheldon", kind: .turtle, trick: "Kickflip", profileImage: "Sheldon", favoriteColor: .brown),
        Pet("Chirpy", kind: .bug, trick: "Canon in D", profileImage: "Chirpy", favoriteColor: .orange)
    ]
}
