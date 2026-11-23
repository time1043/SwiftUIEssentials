//
//  Pet.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct Pet: Identifiable {
    enum Kind {
        case cat
        case dog
        case fish
        case bird
        case lizard
        case turtle
        case rabbit
        case bug

        var systemImage: String {
            switch self {
            case .cat: return "cat.fill"
            case .dog: return "dog.fill"
            case .fish: return "fish.fill"
            case .bird: return "bird.fill"
            case .lizard: return "lizard.fill"
            case .turtle: return "tortoise.fill"
            case .rabbit: return "rabbit.fill"
            case .bug: return "ant.fill"
            }
        }
    }

    let id = UUID()
    var name: String
    var kind: Kind
    var trick: String
    var profileImage: String

    init(_ name: String, kind: Kind, trick: String, profileImage: String) {
        self.name = name
        self.kind = kind
        self.trick = trick
        self.profileImage = profileImage
    }
}
