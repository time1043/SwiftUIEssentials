//
//  ContentView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        let doubleCount = count * 2

        VStack {
            Text("\(count) * 2 = \(doubleCount)")
            Button("Increment") {
                count += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
