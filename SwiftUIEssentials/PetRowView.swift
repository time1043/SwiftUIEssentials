//
//  PetRowView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct PetRowView: View {
    var body: some View {
        // horizontal / vertical
        HStack {
            Image(whiskers.profileImage)
                .clipShape(.circle)
                .shadow(radius: 3)
                .overlay {
                    Circle().stroke(.green, lineWidth: 2)
                }

            VStack(alignment: .leading) {
                Label("Whiskers", systemImage: "cat.fill")
                Text("Tightrope walking")
            }

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
