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
        List(model.allPets) { pet in
            PetRowView(pet: pet)
        }
    }
}

#Preview {
    ContentView(model: PetStore())
}
