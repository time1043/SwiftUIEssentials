//
//  RatingView.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct RatingView: View {
    @State var rating: Int = 5

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

#Preview {
    // RatingView(rating: 3)
    RatingView()
}
