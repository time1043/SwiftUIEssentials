//
//  PetDetailView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct PetDetailView: View {
    @Binding var petID: Pet.ID?

    var body: some View {
        if let petID {
            Text("Pet Detail: \(petID)")
        } else {
            Text("No petID")
        }
    }
}
