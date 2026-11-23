//
//  PetRowView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct PetRowView: View {
    var pet: Pet
    
    var body: some View {
        HStack {
            profileImage

            VStack(alignment: .leading) {
                Text(pet.name)
                Text(pet.trick)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            Spacer()
        }
    }

    private var profileImage: some View {
        Image(pet.profileImage)
            .clipShape(.circle)
            .shadow(radius: 3)
            .overlay {
                Circle().stroke(pet.favoriteColor, lineWidth: 2)
            }
    }
}

let whiskers = Pet(
    "Whiskers",
    kind: .cat,
    trick: "Tightrope walking",
    profileImage: "Whiskers",
    favoriteColor: .green
)

#Preview {
    PetRowView(pet: whiskers)
}
