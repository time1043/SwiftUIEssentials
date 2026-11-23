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
        // Declarative: What is this?
        Button("Add Pet") {
            // Imperative: How to do?
            pets.append(Pet("Toby", kind: .dog, trick: "WWDC Presenter"))
        }
        
        List(pets) { pet in
            HStack {
                Label(pet.name, systemImage: pet.kind.systemImage)

                Spacer()

                Text(pet.trick)
            }
        }
    }
}

#Preview {
    ContentView()
}
