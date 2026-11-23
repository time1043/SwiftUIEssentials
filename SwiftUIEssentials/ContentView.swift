//
//  ContentView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // horizontal / vertical
        HStack {
            Image(whiskers.profileImage)

            VStack(alignment: .leading) {
                Label("Whiskers", systemImage: "cat.fill")
                Text("Tightrope walking")
            }

            Spacer()
        }
    }
}

#Preview {
    ContentView()
}

let whiskers = Pet(
    "Whiskers",
    kind: .cat,
    trick: "Tightrope walking",
    profileImage: "Whiskers"
)
