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
            Label("Whiskers", systemImage: "cat.fill")

            Spacer()

            Text("Tightrope walking")
        }
    }
}

#Preview {
    ContentView()
}
