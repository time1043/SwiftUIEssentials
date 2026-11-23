//
//  PetRowView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct PetRowView: View {
    var body: some View {
        HStack {
            Image(whiskers.profileImage)
                .clipShape(.circle)
                .shadow(radius: 3)
                .overlay {
                    Circle()
                        .stroke(.green, lineWidth: 2)
                }

            Text("Whiskers")

            Spacer()
        }
    }
}

let whiskers = Pet(
    "Whiskers",
    kind: .cat,
    trick: "Tightrope walking",
    profileImage: "Whiskers"
)

#Preview {
    PetRowView()
}
