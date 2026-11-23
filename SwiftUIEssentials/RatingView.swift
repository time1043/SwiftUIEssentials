//
//  RatingView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct RatingContainerView: View {
    @State private var rating: Int = 5

    var body: some View {
        Gauge(value: Double(rating), in: 0...10) {
            Text("Rating")
        }
        RatingView(rating: $rating)
    }
}

struct RatingView: View {
    @Binding var rating: Int

    var body: some View {
        HStack {
            Button("Decrease", systemImage: "minus.circle") {
                withAnimation {
                    rating -= 1
                }
            }
            .disabled(rating == 0)
            .labelStyle(.iconOnly)

            Text(rating, format: .number.precision(.integerLength(2)))
                .contentTransition(.numericText(value: Double(rating)))
                .font(.title.bold())

            Button("Increase", systemImage: "plus.circle") {
                withAnimation {
                    rating += 1
                }
            }
            .disabled(rating == 10)
            .labelStyle(.iconOnly)
        }
    }
}

#Preview("RatingContainerView") {
    // RatingContainerView(rating: 3)
    RatingContainerView()
}
