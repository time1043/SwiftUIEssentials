//
//  TrainingHistory.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

import SwiftUI

@Observable
class TrainingHistory: Identifiable {
    let id = UUID()

    var petID: Pet.ID
    var date: Date
    var trick: String
    var notes: String

    init(
        petID: Pet.ID,
        date: Date = .now,
        trick: String,
        notes: String = ""
    ) {
        self.petID = petID
        self.date = date
        self.trick = trick
        self.notes = notes
    }
}
