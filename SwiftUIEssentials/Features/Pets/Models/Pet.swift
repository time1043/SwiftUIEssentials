//
//  Pet.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

@Observable
class Pet: Identifiable {
    // Pet.Kind.allCases
    // kind.name
    // kind.id
    // kind.systemImage
    enum Kind: String, CaseIterable, Identifiable {
        case cat
        case dog
        case fish
        case bird
        case lizard
        case turtle
        case rabbit
        case bug

        var id: Self { self }

        var name: String {
            rawValue.capitalized
        }

        var systemImage: String {
            switch self {
            case .cat: return "cat.fill"
            case .dog: return "dog.fill"
            case .fish: return "fish.fill"
            case .bird: return "bird.fill"
            case .lizard: return "lizard.fill"
            case .turtle: return "tortoise.fill"
            case .rabbit: return "hare.fill"
            case .bug: return "ant.fill"
            }
        }
    }

    var name: String
    var kind: Kind
    var trick: String
    var profileImage: String
    var favoriteColor: Color
    var hasAward: Bool = false

    init(_ name: String, kind: Kind, trick: String, profileImage: String, favoriteColor: Color) {
        self.name = name
        self.kind = kind
        self.trick = trick
        self.profileImage = profileImage
        self.favoriteColor = favoriteColor
    }

    func giveAward() {
        hasAward = true
    }
}

extension Pet: Transferable {
    nonisolated static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation { pet in
            MainActor.assumeIsolated { pet.name }
        }
    }
}
