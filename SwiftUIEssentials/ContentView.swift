//
//  ContentView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct ContentView: View {
    var model = PetStore()

    var body: some View {
        PetRowView(pet: model.pet(named: "Whiskers"))

        PetRowView(pet: model.pet(named: "Roofus"))

        PetRowView(pet: model.pet(named: "Bubbles"))
    }
}

#Preview {
    ContentView()
}
