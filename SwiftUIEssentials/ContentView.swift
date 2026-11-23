//
//  ContentView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var pets = Pet.samplePets

    var body: some View {
        List(pets) { pet in
            HStack {
                Label("Whiskers", systemImage: "cat.fill")

                Spacer()

                Text("Tightrope walking")
            }
        }
    }
}

#Preview {
    ContentView()
}
