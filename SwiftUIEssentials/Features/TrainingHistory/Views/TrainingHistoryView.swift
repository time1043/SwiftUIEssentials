//
//  TrainingHistoryView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct TrainingHistoryView: View {
    @Binding var historyID: TrainingHistory.ID?

    var body: some View {
        if let historyID {
            Text("Training History: \(historyID)")
        } else {
            Text("No history selected")
        }
    }
}
