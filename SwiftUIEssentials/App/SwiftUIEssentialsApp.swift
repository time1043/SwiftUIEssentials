//
//  SwiftUIEssentialsApp.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

@main
struct SwiftUIEssentialsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        WindowGroup(
            "Training History",
            id: "history",
            for: TrainingHistory.ID.self
        ) { $id in
            TrainingHistoryView(historyID: $id)
        }

        WindowGroup("Pet Detail", id: "detail", for: Pet.ID.self) { $id in
            PetDetailView(petID: $id)
        }
    }
}
